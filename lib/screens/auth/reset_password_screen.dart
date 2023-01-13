import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/basic_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:ndialog/ndialog.dart';

import '../../constants.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  String? _code, _password, _confirmPassword;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool get _isFormValid =>
      _code != null &&
      _code!.isNotEmpty &&
      _password != null &&
      _password!.isNotEmpty &&
      _confirmPassword != null &&
      _confirmPassword!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Token',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Code',
                        filled: true,
                        fillColor: lightColor,
                        isDense: true,
                        //Border when user Uses the Text Field
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                        //Default Border Color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: lightColor,
                            //width: 2.0,
                          ),
                        ),
                        //Border When there is an Error
                        errorBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return 'Code is required';
                        }
                        return null;
                      },
                      onChanged: (String? val) {
                        setState(() {
                          _code = val;
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
                      'New Password',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: lightColor,
                        isDense: true,
                        //Border when user Uses the Text Field
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                        //Default Border Color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: lightColor,
                            //width: 2.0,
                          ),
                        ),
                        //Border When there is an Error
                        errorBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return 'Password is required';
                        }
                        return null;
                      },
                      onChanged: (String? val) {
                        setState(() {
                          _password = val;
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
                      'Confirm New Password',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: lightColor,
                        isDense: true,
                        //Border when user Uses the Text Field
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                        //Default Border Color
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: lightColor,
                            //width: 2.0,
                          ),
                        ),
                        //Border When there is an Error
                        errorBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return 'Confirmation password is required';
                        }

                        if (val != _password) {
                          return 'Passwords do not match';
                        }

                        return null;
                      },
                      onChanged: (String? val) {
                        setState(() {
                          _confirmPassword = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Consumer(
                builder: (context, ref, _) {
                  return RoundedButton(
                    text: 'Change Password',
                    color: secondaryColor,
                    textColor: Colors.white,
                    press: _isFormValid
                        ? () {
                            if (!(_formKey.currentState?.validate() ?? false)) {
                              return;
                            }

                            ProgressDialog.future<Either<BasicError, bool>>(
                              context,
                              future: ref.read(resetPasswordProvider).call(
                                    ResetPasswordDto(
                                      email: email,
                                      code: _code!,
                                      newPassword: _password!,
                                      newPasswordConfirmation: _confirmPassword!,
                                    ),
                                  ),
                              title: Text('Password reset'),
                              message: Text('Please wait...'),
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
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('Password reset successful'),
                                        backgroundColor: secondaryColor,
                                      ),
                                    );
                                    Navigator.pushNamed(context, '/login');
                                  }
                                },
                              );
                            });
                          }
                        : null,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
