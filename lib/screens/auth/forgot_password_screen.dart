import 'package:ask_it/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
                _buildEmailTF(),
                SizedBox(
                  height: 40,
                ),
                RoundedButton(
                  color: secondaryColor,
                  text: 'Send Reset Token',
                  textColor: Colors.white,
                  press: () {
                    Navigator.pushNamed(context, '/reset-password');
                  },
                ),
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

Widget _buildEmailTF() {
  return Container(
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
            //Assigns state to variable.
          },
        ),
      ],
    ),
  );
}
