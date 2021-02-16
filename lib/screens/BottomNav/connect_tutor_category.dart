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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'What do you want to learn?',
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
                  icon: Icons.ac_unit,
                ),
                _buildCategoryTile(
                  title: 'Advanced Java Programming',
                  icon: Icons.ac_unit,
                ),
                _buildCategoryTile(
                  title: 'Object Oriented Programming',
                  icon: Icons.ac_unit,
                ),
                _buildCategoryTile(
                  title: 'Data Structures and Algorithm',
                  icon: Icons.ac_unit,
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
  final String title;
  final IconData icon;

  const _buildCategoryTile({
    Key key,
    this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/topics/1/lesson/1',
        //     arguments: {'title': title });
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 60,
            ),
            SizedBox(
              height: 8,
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
