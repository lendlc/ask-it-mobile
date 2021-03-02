import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/components/course_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RegisterTutorSubjectScreen extends StatefulWidget {
  static String routeName = '/register/tutor/subject';

  @override
  _RegisterTutorSubjectScreenState createState() =>
      _RegisterTutorSubjectScreenState();
}

class _RegisterTutorSubjectScreenState
    extends State<RegisterTutorSubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                'What do you want to teach?',
                style: largeTextBold,
              ),
            ),
            GridView.count(
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                CourseTile(
                  title: 'Intro to Java Programming',
                  imagePath: 'assets/images/subjects/sub-1.png',
                ),
                CourseTile(
                  title: 'Advanced Java Programming',
                  imagePath: 'assets/images/subjects/sub-2.png',
                ),
                CourseTile(
                  title: 'Object Oriented Programming',
                  imagePath: 'assets/images/subjects/sub-3.png',
                ),
                CourseTile(
                  title: 'Data Structures and Algorithms',
                  imagePath: 'assets/images/subjects/sub-4.png',
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.centerRight,
              child: Container(
                width: 175,
                child: RoundedButton(
                  text: 'Next',
                  textColor: Colors.white,
                  color: secondaryColor,
                  press: () {
                    FocusScope.of(context).unfocus();
                    // if (!_formKey.currentState.validate()) {
                    //   return;
                    // }
                    // _formKey.currentState.save();

                    //Move to Home Page
                    Navigator.pushNamed(context, '/register/tutor/schedule');
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
