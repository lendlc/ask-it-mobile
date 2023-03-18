import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  static String routeName = '/learn-java/lesson';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final title = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title ?? 'Lesson Title',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: boxDecorationStyle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text('Lesson 1', style: mediumTextW600),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "A variable is a name which is associated with a value that can be changed. For example when I write int age = 49; here variable name is age which is associated with a value of 49",
                    ),
                  ),
                  _buildImageExampleContainer()
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            RoundedButton(
              text: 'Take Exercise',
              color: primaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, '/mini-game1');
              },
            ),
            RoundedButton(
              text: 'Practice Programming',
              color: primaryColor,
              textColor: Colors.white,
              press: () {
                Navigator.pushNamed(context, '/practice-programming');
              },
            )
          ],
        ),
      ),
    );
  }
}

class _buildImageExampleContainer extends StatelessWidget {
  const _buildImageExampleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Example: ',
            style: smallTextW600,
          ),
          SizedBox(
            height: 5,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              'assets/images/topic-1-lesson1.png',
            ),
          )
        ],
      ),
    );
  }
}
