import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class PlayVideoScreen extends StatelessWidget {
  static String routeName = '/tutors/videos/name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'How to Declare Variables',
          style: mediumTextBold,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Colors.green,
            height: 220,
            child: Center(
              child: Icon(
                Icons.play_arrow_rounded,
                size: 100,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How to Declare variables',
                  style: mediumTextW600,
                ),
                Text(
                  'November 25, 2020',
                  style: TextStyle(
                    fontSize: smallText,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 5,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: smallTextW600,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'To declare (create) a variable, you will specify the type, leave at least one space, then the name for the variable and end the line with a semicolon ( ; ). Java uses the keyword int for integer, double for a floating point number (a double precision number), and boolean for a Boolean value (true or false).',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
