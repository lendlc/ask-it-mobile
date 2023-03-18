import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:ndialog/ndialog.dart';

import '../../core/basic_error.dart';

class RegisterScreen extends StatefulWidget {
  final String role;

  const RegisterScreen({Key? key, required this.role}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? _firstName, _lastName, _email, _password;

  //Reference to the Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: null,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        //Disables Overflow Warning when keyboard pops Out
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              //height: size.height,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Create Profile',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'First Name',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                decoration: inputDecorationStyle,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (String? val) {
                                  if (val == null || val.isEmpty) {
                                    return 'First Name is required';
                                  }

                                  if (isNumeric(val) == true) {
                                    return 'Invalid value';
                                  }

                                  return null;
                                },
                                onChanged: (String? val) {
                                  //Assigns state to variable.
                                  _firstName = val?.trim();
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Name',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                decoration: inputDecorationStyle,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (String? val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Last Name is required';
                                  }
                                  if (isNumeric(val) == true) {
                                    return 'Invalid value';
                                  }
                                  return null;
                                },
                                onChanged: (String? val) {
                                  //Assigns state to variable.
                                  _lastName = val?.trim();
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'School Email',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                decoration: inputDecorationStyle,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (String? val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Email is required';
                                  }
                                  // TODO(acgonzales): Uncomment
                                  // if (!val.contains('@students.national-u.edu.ph')) {
                                  //   return 'Please provide a valid NU email';
                                  // }
                                  return null;
                                },
                                onChanged: (String? val) {
                                  //Assigns state to variable.
                                  _email = val?.trim();
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: inputDecorationStyle,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (String? val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Password is required';
                                  }
                                  if (val.length < 8) {
                                    return 'Password should atleast be 8 characters';
                                  }
                                  return null;
                                },
                                onChanged: (String? val) {
                                  //Assigns state to variable.
                                  _password = val?.trim();
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.03),
                        Consumer(builder: (context, ref, _) {
                          return RoundedButton(
                            text: 'Create my Account',
                            textColor: Colors.black,
                            color: primaryColor,
                            press: () {
                              //close keyboard upon clicking button
                              FocusScope.of(context).unfocus();

                              if (_formKey.currentState == null) {
                                return;
                              }

                              if (!_formKey.currentState!.validate()) {
                                return;
                              }

                              ProgressDialog.future<Either<BasicError, bool>>(
                                context,
                                future: ref.read(registerProvider).call(
                                      RegisterDto(
                                        firstName: _firstName!,
                                        middleName: null,
                                        lastName: _lastName!,
                                        email: _email!,
                                        role: widget.role,
                                        password: _password!,
                                      ),
                                    ),
                                title: Text('Creating account...'),
                                message: Text('Please wait...'),
                                dismissable: false,
                              ).then((value) {
                                if (value == null) return;

                                value.fold(
                                  (l) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(l.message),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  },
                                  (r) {
                                    if (r) {
                                      _formKey.currentState!.save();
                                      _formKey.currentState!.reset();

                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Successfully registered. Please log in.'),
                                          backgroundColor: secondaryColor,
                                        ),
                                      );

                                      Navigator.pushNamedAndRemoveUntil(
                                          context, '/login', (_) => false);
                                    }
                                  },
                                );
                              });
                            },
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
