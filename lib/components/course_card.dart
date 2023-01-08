import 'package:flutter/material.dart';
import '../constants.dart';

class CourseTile extends StatelessWidget {
  final String title, imagePath;
  final void Function()? onTap;

  CourseTile({
    Key? key,
    required this.title,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 0.5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 90,
              child: Image.asset(imagePath),
            ),
            Text(
              title,
              style: mediumTextBold,
            )
          ],
        ),
      ),
    );
  }
}
