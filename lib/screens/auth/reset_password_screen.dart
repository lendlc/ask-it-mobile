import 'package:ask_it/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final email = ModalRoute.of(context)!.settings.arguments as String;

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
              'Reset Password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _buildTokenTF(),
            _buildNewPasswordTF(),
            _buildConfirmPasswordTF(),
            SizedBox(
              height: 25,
            ),
            RoundedButton(
              text: 'Change Password',
              color: secondaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, '/login');
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
    );
  }
}

class _buildConfirmPasswordTF extends StatelessWidget {
  const _buildConfirmPasswordTF({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                return 'Email is required';
              }
            },
            onSaved: (String? val) {
              //Assigns state to variable.
            },
          ),
        ],
      ),
    );
  }
}

class _buildNewPasswordTF extends StatelessWidget {
  const _buildNewPasswordTF({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                return 'Email is required';
              }
            },
            onSaved: (String? val) {
              //Assigns state to variable.
            },
          ),
        ],
      ),
    );
  }
}

class _buildTokenTF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                return 'Email is required';
              }
            },
            onSaved: (String? val) {
              //Assigns state to variable.
            },
          ),
        ],
      ),
    );
  }
}
