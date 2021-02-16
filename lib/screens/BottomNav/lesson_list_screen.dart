import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

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
      body: Container(
          child: GridView.count(
        padding: EdgeInsets.all(16),
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          _buildSubtopicTile(
            chapter: 1,
            title: 'Java Fundamentals',
            path: '/topics/1/lesson/1',
          ),
          _buildSubtopicTile(
            chapter: 2,
            description: 'Text',
            title: 'Primitive types',
            path: '/topics/1/lesson/2',
          ),
          _buildSubtopicTile(
            chapter: 3,
            description: 'Text',
            title: 'Class Methods',
            path: '/topics/1/lesson/1',
          ),
          _buildSubtopicTile(
            chapter: 3,
            description: 'Text',
            title: 'Sequential Structure',
            path: '/topics/1/lesson/1',
          ),
          _buildSubtopicTile(
            chapter: 3,
            description: 'Text',
            title: 'Conditional Structure 1',
            path: '/topics/1/lesson/1',
          ),
          _buildSubtopicTile(
            chapter: 3,
            description: 'Text',
            title: 'Conditional Strtucture 2',
            path: '/topics/1/lesson/1',
          ),
          _buildSubtopicTile(
            chapter: 3,
            description: 'Text',
            title: 'Interation Structure',
            path: '/topics/1/lesson/1',
          ),
          _buildSubtopicTile(
            chapter: 3,
            description: 'Text',
            title: 'Iteration Strucure 3',
            path: '/topics/1/lesson/1',
          ),
        ],
      )),
    );
  }
}

class _buildSubtopicTile extends StatelessWidget {
  final String title, description, path;
  final int chapter;

  const _buildSubtopicTile({
    Key key,
    this.title,
    this.description,
    this.chapter,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/topics/1/lesson/1',
            arguments: {'title': title});
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        decoration: boxDecorationStyle,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.ac_unit_outlined,
              size: 42,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Chapter $chapter",
              style: TextStyle(color: Colors.black38),
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
