import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 300,
              child: Text(
                'Sorry, We can\'t find the page you are looking for :(',
                style: mediumTextBold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: RoundedButton(
                text: 'Go Back',
                color: secondaryColor,
                textColor: Colors.white,
                press: () {
                  //goes back to previous page.
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
