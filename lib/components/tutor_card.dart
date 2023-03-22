import 'package:ask_it/core/schedule/schedule_model.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class TutorCard extends StatelessWidget {
  final Tutor tutor;
  final String? subtitle;
  final void Function()? onTap;

  num get avatarIndex {
    num index = tutor.id % 7;
    return index == 0 ? 1 : index;
  }

  String get avatar => 'assets/images/avatars/$avatarIndex.png';

  TutorCard({
    Key? key,
    required this.tutor,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

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
                      tutor.name,
                      style: mediumTextBold,
                    ),
                    if (subtitle != null) ...[
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        subtitle!,
                        style: TextStyle(
                          fontSize: smallText,
                          color: Colors.black45,
                        ),
                      ),
                    ]
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
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),
              child: ClipOval(
                child: Image.asset(avatar),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
