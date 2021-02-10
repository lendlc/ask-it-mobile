import 'package:ask_it/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Forgot your Password?',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please enter the email address you\'d like your password reset information sent to.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
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
                //Go to Forgot Password Screen
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
    );
  }
}

class _buildEmailTF extends StatelessWidget {
  const _buildEmailTF({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            decoration: InputDecoration(
              hintText: 'Email',
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
            validator: (String val) {
              if (val.isEmpty) {
                return 'Email is required';
              }
            },
            onSaved: (String val) {
              //Assigns state to variable.
            },
          ),
        ],
      ),
    );
  }
}
