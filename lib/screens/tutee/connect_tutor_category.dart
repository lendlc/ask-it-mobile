import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

import '../../components/course_card.dart';

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
                CourseTile(
                  title: 'Intro to Java Programming',
                  imagePath: 'assets/images/subjects/sub-1.png',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/tutor-list',
                    );
                  },
                ),
                CourseTile(
                  title: 'Advanced Java Programming',
                  imagePath: 'assets/images/subjects/sub-2.png',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/tutor-list',
                    );
                  },
                ),
                CourseTile(
                  title: 'Object Oriented Programming',
                  imagePath: 'assets/images/subjects/sub-3.png',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/tutor-list',
                    );
                  },
                ),
                CourseTile(
                  title: 'Data Structures and Algorithms',
                  imagePath: 'assets/images/subjects/sub-4.png',
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/tutor-list',
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
