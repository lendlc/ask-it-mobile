import 'package:ask_it/Screens/Auth/ForgotPassword.dart';
import 'package:ask_it/Screens/Auth/Login.dart';
import 'package:ask_it/Screens/Auth/RegisterTutor.dart';
import 'package:ask_it/Screens/BottomNav/Profile.dart';
import 'package:ask_it/Screens/Auth/RegisterStudent.dart';
import 'package:ask_it/Screens/Auth/ResetPassword.dart';
import 'package:ask_it/Screens/Auth/Welcome.dart';
import 'package:ask_it/Screens/BottomNav/Topics/Lesson.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

import 'Screens/BottomNav/Home.dart';
import 'Screens/BottomNav/Topics/TopicList.dart';

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
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarStyle,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //This could easily change when logged in and stuff
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/register-student': (context) => RegisterStudentScreen(),
        '/register-tutor': (context) => RegisterTutorScreen(),
        '/login': (context) => LoginScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/reset-password': (context) => ResetPasswordScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/topics/1': (context) => TopicListScreen(),
        '/topics/1/lesson/1': (context) => LessonScreen(),
      },
      //home: WelcomeScreen()
    );
  }
}
