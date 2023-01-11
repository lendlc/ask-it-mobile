import 'package:ask_it/constants.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:ndialog/ndialog.dart';

import '../../core/basic_error.dart';
import 'components/already_have_an_account.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _email;
  String? _password;

  //Reference to the Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/forgot-password');
        },
        child: Text('Forgot Password?', style: smallTextW600BlueAccent),
      ),
    );
  }

  Widget _buildEmailTF() {
    return Container(
      //margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
              //   return 'Enter a valid NU email';
              // }
              return null;
            },
            onChanged: (String? val) {
              _email = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordTF() {
    return Container(
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
              } else
                return null;
            },
            onChanged: (String? val) {
              _password = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/logo-wtext.png',
                  width: size.width * 0.5,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      _buildEmailTF(),
                      _buildPasswordTF(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                _buildForgotPasswordBtn(),
                Container(
                  alignment: Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Consumer(builder: (context, ref, _) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.9,
                          backgroundColor: primaryColor,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 40,
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: mediumTextBold,
                        ),
                        onPressed: () async {
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
                            future: ref
                                .read(loginProvider)
                                .call(LoginDto(username: _email!, password: _password!)),
                            title: Text('Logging in...'),
                            message: Text('Please wait...'),
                            dismissable: false,
                          ).then((value) {
                            if (value == null) return;

                            value.fold(
                              (l) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Invalid credentials.'),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              },
                              (r) {
                                if (r) {
                                  _formKey.currentState!.save();
                                  _formKey.currentState!.reset();

                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    '/home',
                                    (_) => false,
                                  );
                                }
                              },
                            );
                          });
                        },
                      );
                    }),
                  ),
                ),
                SizedBox(height: 50),
                AlreadyHaveAnAccount(
                  postion: MainAxisAlignment.center,
                  size: size,
                  login: false,
                  onTap: () {
                    //move to login page
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
