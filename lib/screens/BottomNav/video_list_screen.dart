import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class VideoListScreen extends StatelessWidget {
  static String routeName = '/tutor/videos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graciela Felipe",
          style: mediumTextBold,
        ),
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
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
  const TutorialCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/tutors/videos/name');
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
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
              padding: EdgeInsets.all(8),
              child: Text(
                'How to Declare Variables',
                style: mediumTextW600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
