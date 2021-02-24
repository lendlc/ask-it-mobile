import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class TutorCategoryScreen extends StatelessWidget {
  static String routeName = '/tutor-category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Text(
                'Available Subjects',
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
                _buildCategoryTile(
                  title: 'Intro to Java Programming',
                  imagePath: 'assets/images/subjects/sub-1.png',
                ),
                _buildCategoryTile(
                  title: 'Advanced Java Programming',
                  imagePath: 'assets/images/subjects/sub-2.png',
                ),
                _buildCategoryTile(
                  title: 'Object Oriented Programming',
                  imagePath: 'assets/images/subjects/sub-3.png',
                ),
                _buildCategoryTile(
                  title: 'Data Structures and Algorithm',
                  imagePath: 'assets/images/subjects/sub-4.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _buildCategoryTile extends StatelessWidget {
  final String title, imagePath;

  const _buildCategoryTile({
    Key key,
    this.title,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/tutor-list',
          arguments: {'title': title},
        );
      },
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
