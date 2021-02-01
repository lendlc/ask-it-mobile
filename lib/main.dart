import 'package:ask_it/Screens/Auth/Welcome.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Ask IT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
                
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen()
    );
  }
}
