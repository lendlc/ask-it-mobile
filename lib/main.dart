import 'package:ask_it/screens/tutee/game_result_screen.dart';
import 'package:ask_it/screens/tutee/mini_game_1_screen.dart';
import 'package:ask_it/screens/tutor/tutor_add_schedule_screen.dart';
import 'package:ask_it/screens/tutor/tutor_edit_schedule_screen.dart';
import 'package:ask_it/screens/tutor/tutor_edit_video_screen.dart';
import 'package:ask_it/screens/tutor/tutor_upload_video_screen.dart';
import 'package:ask_it/screens/tutor/tutor_videos_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/auth/*register_tutor_schedule_screen.dart';
import 'screens/auth/register_tutor_subject_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_student_screen.dart';
import 'screens/auth/register_tutor_screen.dart';
import 'screens/auth/reset_password_screen.dart';
import 'screens/auth/welcome_screen.dart';
import 'screens/error_screen.dart';
import 'screens/shared/change_avatar_screen.dart';
import 'screens/shared/change_password_screen.dart';
import 'screens/tutee/chat_screen.dart';
import 'screens/tutee/connect_tutor_category.dart';
import 'screens/shared/edit_profile_screen.dart';
import 'screens/tutee/lesson_list_screen.dart';
import 'screens/tutee/lesson_screen.dart';
import 'screens/shared/tabs_screen.dart';
import 'screens/tutee/tutor_list_screen.dart';
import 'screens/tutee/video_list_screen.dart';
import 'screens/tutee/video_play_screen.dart';
import 'screens/tutee/video_tutor_list_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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
        RegisterTutorSubjectScreen.routeName: (context) =>
            RegisterTutorSubjectScreen(),
        RegisterTutorScheduleScreen.routeName: (context) =>
            RegisterTutorScheduleScreen(),
        '/login': (context) => LoginScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/reset-password': (context) => ResetPasswordScreen(),
        //auth routes end
        TabsScreen.routeName: (context) => TabsScreen(),
        TopicListScreen.routeName: (context) => TopicListScreen(),
        LessonScreen.routeName: (context) => LessonScreen(),
        ChatScreen.routeName: (context) => ChatScreen(),
        TutorCategoryScreen.routeName: (context) => TutorCategoryScreen(),
        TutorListScreen.routeName: (context) => TutorListScreen(),
        VideoTutorListScreen.routeName: (context) => VideoTutorListScreen(),
        VideoListScreen.routeName: (context) => VideoListScreen(),
        PlayVideoScreen.routeName: (context) => PlayVideoScreen(),
        EditProfileScreen.routeName: (context) => EditProfileScreen(),
        ChangePasswordScreen.routeName: (context) => ChangePasswordScreen(),
        ChangeAvatarScreen.routeName: (context) => ChangeAvatarScreen(),
        MiniGame1Screen.routeName: (context) => MiniGame1Screen(),
        GameResultScreen.routeName: (context) => GameResultScreen(),

        //tutor routes
        TutorVideoListScreen.routeName: (context) => TutorVideoListScreen(),
        TutorUploadVideoScreen.routeName: (context) => TutorUploadVideoScreen(),
        TutorEditVideoScreen.routeName: (context) => TutorEditVideoScreen(),

        TutorEditScheduleScreen.routeName: (context) =>
            TutorEditScheduleScreen(),
        TutorAddScheduleScreen.routeName: (context) => TutorAddScheduleScreen()
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => ErrorScreen());
      },
    );
  }
}
