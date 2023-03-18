import 'package:flutter/material.dart';
import '../constants.dart';

class CourseTile extends StatelessWidget {
  final String title, imagePath;
  final void Function()? onTap;
  final bool isSelected;

  CourseTile({
    Key? key,
    required this.title,
    required this.imagePath,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.white,
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
          children: <Widget>[
            Container(
              height: 80,
              child: Image.asset(imagePath),
            ),
            SizedBox(height: 8),
            Expanded(
              child: Text(
                title,
                style: smallTextW600.copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
