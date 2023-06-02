import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'lesson_list_screen.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;

  const LessonScreen({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  static Route<void> route({required Lesson lesson}) => MaterialPageRoute(
        builder: (context) => LessonScreen(lesson: lesson),
      );

  Future<String> _loadLessonContent(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/lessons/${lesson.contentIndex}.md');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          lesson.title,
          style: mediumTextBold,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Practice Programming'),
        icon: Icon(Icons.code),
        onPressed: () {
          Navigator.pushNamed(context, '/practice-programming');
        },
      ),
      body: FutureBuilder<String>(
          future: _loadLessonContent(context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text('An error has occurred loading the lesson content.'),
                );
              } else {
                return Markdown(
                  data: snapshot.data ?? '## No content found',
                );
              }
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
      // body: Container(
      //   padding: EdgeInsets.all(16),
      //   child: Column(
      //     children: [
      //       Container(
      //         padding: EdgeInsets.all(16),
      //         decoration: boxDecorationStyle,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             Container(
      //               padding: EdgeInsets.only(bottom: 5),
      //               child: Text('Lesson 1', style: mediumTextW600),
      //             ),
      //             Container(
      //               padding: EdgeInsets.only(bottom: 10),
      //               child: Text(
      //                 "A variable is a name which is associated with a value that can be changed. For example when I write int age = 49; here variable name is age which is associated with a value of 49",
      //               ),
      //             ),
      //             _buildImageExampleContainer()
      //           ],
      //         ),
      //       ),
      //       Expanded(child: SizedBox()),
      //       RoundedButton(
      //         text: 'Take Exercise',
      //         color: primaryColor,
      //         textColor: Colors.white,
      //         press: () {
      //           Navigator.pushNamed(context, '/mini-game1');
      //         },
      //       ),
      //       RoundedButton(
      //         text: 'Practice Programming',
      //         color: primaryColor,
      //         textColor: Colors.white,
      //         press: () {
      //           Navigator.pushNamed(context, '/practice-programming');
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
