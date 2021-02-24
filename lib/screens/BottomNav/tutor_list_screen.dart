import 'package:ask_it/components/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'widgets/tutor_card.dart';

class TutorListScreen extends StatelessWidget {
  static String routeName = '/tutor-list';

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      titlePadding: EdgeInsets.all(16),
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Select date and Time',
        style: mediumTextBold,
      ),
      content: Container(
        height: 250,
        child: Form(
          child: Column(
            children: <Widget>[
              RadioListTile<int>(
                title: Text(
                  "Mon Feb 15 (7:00-9:00AM)",
                ),
                value: 1,
                toggleable: true,
                groupValue: 1,
                onChanged: (value) {
                  return 0;
                },
              ),
              RadioListTile(
                title: Text(
                  "Tue Feb 15 (7:00-9:00AM)",
                ),
                value: 1,
                groupValue: 0,
                onChanged: (value) {
                  return 0;
                },
              ),
              RadioListTile(
                title: Text(
                  "Wed Feb 15 (11:00-12:00AM)",
                ),
                value: 1,
                groupValue: 0,
                onChanged: (value) {
                  return null;
                },
              ),
              RadioListTile(
                title: Text(
                  "Fri Feb 15 (7:00-12:00AM)",
                ),
                groupValue: 0,

                //toggleable: false,
                value: 1,
                onChanged: (value) {
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: RoundedButton(
            text: 'Continue',
            color: secondaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/home',
                (_) => false,
              );
            },
          ),
        )
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Intro to Java Programming',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemCount: 3,
          itemBuilder: (context, index) {
            return BuildTutorCard(
              name: 'Rhon Emmanuel Casem',
              email: 'casem@students.national-u.edu.ph',
              onTap: () {
                showAlertDialog(context);
              },
            );
          },
        ),
      ),
    );
  }
}

