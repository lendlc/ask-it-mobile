import 'package:ask_it/constants.dart';
import 'package:ask_it/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/already_have_an_account.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;

  //Reference to the Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildLoginBtn() {
    return Builder(
      builder: (context) => Container(
        alignment: Alignment.centerRight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: RaisedButton(
            elevation: 0.9,
            color: primaryColor,
            child: Text(
              "Login",
              style: mediumTextBold,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),
            onPressed: () async {
              //close keyboard upon clicking button
              FocusScope.of(context).unfocus();

              if (!_formKey.currentState.validate()) {
                return;
              }
              _formKey.currentState.save();

              final int code =
                  await Provider.of<Auth>(context, listen: false).login(
                _email,
                _password,
              );

              if (code == 200) {
                //proceed to home page
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (_) => false,
                );
              }
              //_formKey.currentState.reset();
              final snackBar = SnackBar(content: Text('Invalid Credentials'));
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ),
      ),
    );
  }

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
            validator: (String val) {
              if (val.isEmpty) {
                return 'Email is required';
              }
              if (!val.contains('@students.national-u.edu.ph')) {
                return 'Enter a valid NU email';
              }
              return null;
            },
            onChanged: (String val) {
              _email = val.trim();
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
            validator: (String val) {
              if (val.isEmpty) {
                return 'Password is required';
              } else
                return null;
            },
            onChanged: (String val) {
              _password = val.trim();
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
                _buildLoginBtn(),
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
