import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

import 'already_have_an_account.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //width and height of screen
    Size size = MediaQuery.of(context).size;

    return Container(
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
                fontWeight: FontWeight.w700),
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
            color: kPrimaryColor,
            text: "Sign up as Student",
            textColor: Colors.black,
            press: () {
              //Routes to Signup student screen
              Navigator.pushNamed(context, '/signup-student');
            },
          ),
          RoundedButton(
            color: kSecondaryColor,
            text: "Sign up as Tutor",
            textColor: Colors.white,
            press: () {},
          ),
          AlreadyHaveAnAccount(
            size: size,
            login: true,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
