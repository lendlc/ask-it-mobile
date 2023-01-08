import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterStudentScreen extends StatefulWidget {
  @override
  _RegisterStudentScreenState createState() => _RegisterStudentScreenState();
}

class _RegisterStudentScreenState extends State<RegisterStudentScreen> {
  String? _firstName, _lastName, _email, _password;
  final String role = 'tutee';
  String? emailIsTakenError;
  bool emailIsTaken = false;

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
      body: Consumer(builder: (context, ref, _) {
        final registerAction = ref.watch(registerProvider);
        final busy = ref.watch(
          registerProvider.select((value) => value.isBusy),
        );

        return Center(
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
                                enabled: !busy,
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
                                enabled: !busy,
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
                                enabled: !busy,
                                decoration: inputDecorationStyle,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (String? val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Email is required';
                                  }
                                  // if (!val.contains(
                                  //     '@students.national-u.edu.ph')) {
                                  //   return 'Please provide a valid NU email';
                                  // }
                                  if (emailIsTaken == true) {
                                    return emailIsTakenError;
                                  }
                                  return null;
                                },
                                onChanged: (String? val) {
                                  //Assigns state to variable.
                                  _email = val?.trim();
                                  setState(() {
                                    emailIsTaken = false;
                                  });
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
                                enabled: !busy,
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
                            press: !busy
                                ? () async {
                                    //close keyboard upon clicking button
                                    FocusScope.of(context).unfocus();

                                    if (_formKey.currentState == null) {
                                      return;
                                    }

                                    if (!_formKey.currentState!.validate()) {
                                      return;
                                    }

                                    registerAction.arg = RegisterDto(
                                      firstName: _firstName!,
                                      middleName: null,
                                      lastName: _lastName!,
                                      email: _email!,
                                      role: role,
                                      password: _password!,
                                    );
                                    final result = await ref.read(registerProvider).call();

                                    result.fold(
                                      (l) {
                                        return ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text(l),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                      },
                                      (r) {
                                        _formKey.currentState!.save();
                                        _formKey.currentState!.reset();

                                        Navigator.pushNamedAndRemoveUntil(
                                            context, '/login', (_) => false);
                                      },
                                    );
                                  }
                                : null,
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
