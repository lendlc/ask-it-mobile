import 'package:ask_it/providers/auth.dart';
import 'package:ask_it/screens/tutor/tutor_home_screen.dart';
import 'package:ask_it/screens/tutor/tutor_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../tutee/chat_list_screen.dart';
import '../tutee/home_screen.dart';
import '../tutee/profile_screen.dart';

class TabsScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _tutorPages = [
    TutorHomeScreen(),
    ChatListScreen(),
    TutorProfileScreen()
  ];

  final List<Widget> _studentPages = [
    HomeScreen(),
    ChatListScreen(),
    ProfileScreen(),
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isTutor = Provider.of<Auth>(context, listen: true).isTutor;
    //final bool isTutor = true;
    return Scaffold(
      body: !isTutor
          ? _studentPages[_selectedPageIndex]
          : _tutorPages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        onTap: _selectPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 29,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_rounded,
              size: 29,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              size: 29,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
