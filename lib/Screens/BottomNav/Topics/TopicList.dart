import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class TopicListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Introduction to Java Programming",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            _buildSubtopicTile(),
            _buildSubtopicTile(),
            _buildSubtopicTile(),
          ],
        ),
      ),
    );
  }
}

class _buildSubtopicTile extends StatelessWidget {
  const _buildSubtopicTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 80,
      decoration: boxDecorationStyle,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Chapter 1",
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    "Java Fundamentals",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            //color: Colors.green,
            padding: EdgeInsets.all(16),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.pushNamed(context, '/topics/1/lesson/1');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
