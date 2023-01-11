import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/screens/tutor/tutor_home_screen.dart';
import 'package:ask_it/screens/tutor/tutor_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../tutee/chat_list_screen.dart';
import '../tutee/home_screen.dart';
import '../tutee/profile_screen.dart';

final currentPageProvider = StateProvider.autoDispose<int>((ref) => 0);

class TabsScreen extends ConsumerWidget {
  static String routeName = '/home';

  final List<Widget> _tutorPages = [
    TutorHomeScreen(),
    ChatListScreen(),
    TutorProfileScreen(),
  ];

  final List<Widget> _studentPages = [
    HomeScreen(),
    ChatListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPage = ref.watch(currentPageProvider);

    return Scaffold(
      body: Consumer(builder: (context, ref, _) {
        final userProfileAV = ref.watch(userProfileProvider);
        return userProfileAV.when(
          data: (userProfile) {
            return IndexedStack(
              index: currentPage,
              children: userProfile.role == 'tutor' ? _tutorPages : _studentPages,
            );
          },
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(child: Text(error.toString())),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentPage,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        onTap: (index) {
          ref.read(currentPageProvider.notifier).state = index;
        },
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
