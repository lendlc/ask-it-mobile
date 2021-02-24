import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messages',
          style: mediumTextBold,
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: _buildMessageItem(),
          );
        },
      ),
    );
  }
}

class _buildMessageItem extends StatelessWidget {
  const _buildMessageItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        height: 90,
        //width: double.infinity,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 16),
        decoration: boxDecorationStyle,
        child: Row(
          children: <Widget>[
            Container(
              //occupy parent height (80)
              height: double.infinity,
              width: 70,
              decoration: BoxDecoration(
                color: lightColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    10.0,
                  ),
                ),
              ),

              child: Center(
                child: Text(
                  '4',
                  style: TextStyle(
                    fontSize: largeText,
                    color: Colors.red[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Rhon Emmanuel Casem',
                      style: TextStyle(
                        fontSize: mediumText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Introduction to Java Programming',
                      style: TextStyle(
                        fontSize: defaultText,
                        color: Colors.black38,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
