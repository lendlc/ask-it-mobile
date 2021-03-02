import 'package:flutter/material.dart';
import '../constants.dart';

class BuildTutorCard extends StatelessWidget {
  final String name, email;
  final Function onTap;

  BuildTutorCard({this.name, this.email, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
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
                      name,
                      style: mediumTextBold,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      email,
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
              //height: 80,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),
              child: Icon(
                Icons.star_rounded,
                size: 70,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
