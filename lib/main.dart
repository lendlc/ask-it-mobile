import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

import 'screens/BottomNav/chat_screen.dart';
import 'screens/BottomNav/connect_tutor_category.dart';
import 'screens/BottomNav/lesson_list_screen.dart';
import 'screens/BottomNav/lesson_screen.dart';
import 'screens/BottomNav/tabs_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_student_screen.dart';
import 'screens/auth/register_tutor_screen.dart';
import 'screens/auth/reset_password_screen.dart';
import 'screens/auth/welcome_screen.dart';
import 'screens/error_screen.dart';


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
      ),
      //This could easily change when logged in and stuff
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        //auth routes
        '/register-student': (context) => RegisterStudentScreen(),
        '/register-tutor': (context) => RegisterTutorScreen(),
        '/login': (context) => LoginScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/reset-password': (context) => ResetPasswordScreen(),
        //auth routes end
        '/home': (context) => TabsScreen(),
        TopicListScreen.routeName: (context) => TopicListScreen(),
        LessonScreen.routeName: (context) => LessonScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
        TutorCategoryScreen.routeName: (context) => TutorCategoryScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => ErrorScreen());
      },
      //home: WelcomeScreen()
    );
  }
}
