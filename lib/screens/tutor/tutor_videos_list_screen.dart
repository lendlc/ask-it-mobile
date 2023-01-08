import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class TutorVideoListScreen extends StatelessWidget {
  static String routeName = '/tutor/profile/videos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Videos',
          style: mediumTextBold,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tutor/profile/videos/upload');
            },
            child: Text(
              "Upload",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: 4,
          itemBuilder: (context, index) {
            return TutorialCard();
          },
        ),
      ),
    );
  }
}

class TutorialCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.pushNamed(context, '/tutors/videos/name');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        decoration: boxDecorationStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              color: Colors.black45,
              child: Center(
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 100,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'How to Declare Variables',
                    style: mediumTextW600,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.pushNamed(context, '/tutor/videos/edit');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
