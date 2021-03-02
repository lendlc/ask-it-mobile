import 'package:ask_it/components/rounded_button.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/already_have_an_account.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //width and height of screen
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Ask IT",
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Image.asset(
              'assets/images/studying-concept.png',
              //width: size.width * 0.9,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              color: primaryColor,
              text: "Sign up as Student",
              textColor: Colors.black,
              press: () {
                //Routes to Signup student screen
                Navigator.pushNamed(context, '/register-student');
              },
            ),
            RoundedButton(
              color: secondaryColor,
              text: "Sign up as Tutor",
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, '/register-tutor');
              },
            ),
            AlreadyHaveAnAccount(
              size: size,
              login: true,
              onTap: () {
                //move to login page
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
