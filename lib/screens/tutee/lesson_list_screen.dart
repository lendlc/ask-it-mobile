import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class TopicListScreen extends StatelessWidget {
  static String routeName = '/learn-java';

  final List<Map> topics = [
    {
      "title": 'Java Fundamentals',
      "image": 'introprog',
    },
    {
      "title": 'Primitive Types',
      "image": 'primitive',
    },
    {
      "title": 'Class Methods',
      "image": 'variablescoping',
    },
    {
      "title": 'Sequential Structure',
      "image": 'sequential',
    },
    {
      "title": 'Conditional Structure 1',
      "image": 'condition',
    },
    {
      "title": 'Conditional Structure 2',
      "image": 'condition1',
    },
    {
      "title": 'Iteration Structure 1',
      "image": 'iteration1',
    },
    {
      "title": 'Iteration Structure 2',
      "image": 'iteration2',
    },
    {
      "title": 'Iteration Structure 3',
      "image": 'iteration3',
    },
    {
      "title": 'String and Char Operations',
      "image": 'stringchar',
    },
    {
      "title": 'Array and Arraylists',
      "image": 'array',
    },
    {
      "title": 'Exception Handling',
      "image": 'exception',
    },
  ];

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
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return TopicCard(
            title: topics[index]['title'],
            image: topics[index]['image'],
            chapter: index + 1,
          );
        },
      ),
    );
  }
}

class TopicCard extends StatelessWidget {
  final String title, image;
  final int chapter;

  const TopicCard({
    Key? key,
    required this.title,
    required this.chapter,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/learn-java/lesson',
            arguments: {'title': title});
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
                  'assets/images/topics/$image.png',
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
                    "Chapter $chapter",
                    style: TextStyle(color: Colors.black45),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    title,
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
