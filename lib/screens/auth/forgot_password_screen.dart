import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ndialog/ndialog.dart';

import '../../constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String? _email;

  bool get _isEmailValid => _email != null && _email!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Forgot your Password?',
                  style: largeTextBold,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Please enter the email address you\'d like your password reset information sent to.',
                  style: mediumTextW600,
                ),
                SizedBox(
                  height: 40,
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
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return 'Email is required';
                          }

                          return null;
                        },
                        onChanged: (String? val) {
                          setState(() {
                            _email = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Consumer(builder: (context, ref, _) {
                  return RoundedButton(
                    color: secondaryColor,
                    text: 'Send Reset Token',
                    textColor: Colors.white,
                    press: _isEmailValid
                        ? () {
                            ProgressDialog.future(
                              context,
                              future: ref
                                  .read(sendPasswordResetEmailProvider)
                                  .call(SendPasswordResetEmailDto(email: _email!)),
                              title: Text('Sending password reset email...'),
                              message: Text('Please wait...'),
                              dismissable: false,
                            ).then(
                              (value) {
                                if (value == null) return;

                                value.fold(
                                  (l) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Error occurred while sending password reset email.'),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  },
                                  (r) {
                                    if (r) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                              'An email has been sent to your email with the reset token.'),
                                          backgroundColor: secondaryColor,
                                        ),
                                      );
                                      Navigator.pushNamed(
                                        context,
                                        '/reset-password',
                                        arguments: _email,
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          }
                        : null,
                  );
                }),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Back to Login',
                    style: smallTextW600BlueAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
