import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  static String routeName = '/profile/update/password';

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  String? _oldPassword, _newPassword, _newPasswordCheck;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget oldPasswordTF() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Password',
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
              return null;
            },
            onChanged: (String? val) {
              _oldPassword = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  Widget newPasswordTF() {
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
            decoration: inputDecorationStyle,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Password is required';
              }
              if (val.length < 8) {
                return 'Password should be atleast 8 characters';
              }
              return null;
            },
            onChanged: (String? val) {
              _newPassword = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  Widget confirmNewPasswordTF() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Confirm new Password',
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

              if (val != _newPassword) {
                return 'Password does not match';
              }
              return null;
            },
            onChanged: (String? val) {
              _oldPassword = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: mediumTextBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                oldPasswordTF(),
                newPasswordTF(),
                confirmNewPasswordTF(),
                SizedBox(
                  height: 32,
                ),
                RoundedButton(
                  text: 'Change Password',
                  textColor: Colors.white,
                  color: secondaryColor,
                  press: () {
                    //close keyboard upon clicking button
                    FocusScope.of(context).unfocus();

                    if (_formKey.currentState == null) {
                      return;
                    }

                    //check if all validation passes
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    _formKey.currentState!.save();

                    // TODO(acgonzales): Implement change password

                    //Post Data to API

                    //Back to Edit Profile Screen
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
