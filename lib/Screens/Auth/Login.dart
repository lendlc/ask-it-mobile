import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

import 'components/already_have_an_account.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo-wtext.png',
                  width: size.width * 0.5,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  width: size.width * 0.9,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    children: <Widget>[
                      _buildEmailTF(),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      _buildPasswordTF()
                    ],
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                _buildForgotPasswordBtn(size: size),
                _buildLoginBtn(size: size),
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

class _buildLoginBtn extends StatelessWidget {
  const _buildLoginBtn({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      alignment: Alignment.centerRight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          color: kPrimaryColor,
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class _buildForgotPasswordBtn extends StatelessWidget {
  const _buildForgotPasswordBtn({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: GestureDetector(
        onTap: () {
          //Go to Forgot Password Screen
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _buildEmailTF extends StatelessWidget {
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
              fillColor: kOffWhiteColor,
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
                  color: kOffWhiteColor,
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

class _buildPasswordTF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            decoration: InputDecoration(
              hintText: 'Password',
              filled: true,
              fillColor: kOffWhiteColor,
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
                  color: kOffWhiteColor,
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
                return 'First Name is required';
              } else
                return '';
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
