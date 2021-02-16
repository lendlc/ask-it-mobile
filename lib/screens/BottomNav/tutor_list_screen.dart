import 'package:flutter/material.dart';

import '../../constants.dart';

class TutorListScreen extends StatelessWidget {
  static String routeName = '/tutor-list';

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
            return _buildTutorCard();
          },
        ),
      ),
    );
  }
}

class _buildTutorCard extends StatelessWidget {
  const _buildTutorCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        height: 90,
        //width: double.infinity,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 16),
        decoration: boxDecorationStyle,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Rhon Emmanuel Casem',
                      style: TextStyle(
                        fontSize: mediumText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'casemr@students.national-u.edu.ph',
                      style: TextStyle(
                        fontSize: smallText,
                        color: Colors.black45,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              //occupy parent height (80)
              height: double.infinity,
              width: 70,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),

              child: Container(
                //color: primaryColor,
                child: Icon(
                  Icons.star_rounded,
                  size: 70,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
