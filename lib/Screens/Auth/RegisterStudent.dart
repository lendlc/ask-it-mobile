import 'package:flutter/material.dart';

class RegisterStudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Create your Account',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            Container(
              width: size.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'First Name', labelText: 'First Name', border: OutlineInputBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
