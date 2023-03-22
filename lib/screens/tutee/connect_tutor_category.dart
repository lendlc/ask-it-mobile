import 'package:ask_it/constants.dart';
import 'package:ask_it/screens/tutee/tutor_list_screen.dart';
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
              children: List.generate(
                subjects.length,
                (index) {
                  final subject = subjects[index];
                  return CourseTile(
                    title: subject['title']!,
                    imagePath: subject['imagePath']!,
                    onTap: () {
                      Navigator.of(context).push(
                        TutorListScreen.route(
                          subject: subject['title']!,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
