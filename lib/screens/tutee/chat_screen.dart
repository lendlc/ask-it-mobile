import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rhon Emmanuel Casem',
          style: mediumTextBold,
        ),
      ),
      body: GestureDetector(
        //closes kb
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
          child: Column(
            children: [
              _buildSentMessage(),
              _buildRecievedMessage(),
              _buildSentMessage(),
              _buildSentMessage(),
              Expanded(child: SizedBox()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                height: 70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Send a Message',
                          isDense: true,
                          filled: true,
                          fillColor: lightColor,
                          //Border when user Uses the Text Field
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: lightColor,
                            ),
                          ),
                          //Default Border Color
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: lightColor,
                              //width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_rounded),
                      iconSize: 25,
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _buildSentMessage extends StatelessWidget {
  const _buildSentMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue[500],
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text(
          'Paano ba gumawa ng loop',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _buildRecievedMessage extends StatelessWidget {
  const _buildRecievedMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFe5e5e5),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Text(
          'First, declare a variable, then do something',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
