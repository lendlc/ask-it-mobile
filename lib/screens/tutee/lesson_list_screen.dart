import 'package:ask_it/constants.dart';
import 'package:ask_it/screens/tutee/lesson_screen.dart';
import 'package:flutter/material.dart';

class Lesson {
  final int index;
  final String title;
  final String image;

  const Lesson(this.index, this.title, this.image);

  String get contentIndex => index.toString().padLeft(2, '0');
}

class TopicListScreen extends StatelessWidget {
  static String routeName = '/learn-java';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Java Programming Basics",
          style: mediumTextBold,
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          final lesson = lessons[index];
          return LessonCard(
            lesson: lesson,
          );
        },
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final Lesson lesson;

  const LessonCard({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(LessonScreen.route(lesson: lesson));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        decoration: boxDecorationStyle,
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.teal[100],
                height: 80,
                child: Image.asset(
                  'assets/images/topics/${lesson.image}.png',
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Chapter ${lesson.index}",
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    lesson.title,
                    style: mediumTextBold,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
