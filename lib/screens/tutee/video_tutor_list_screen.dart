import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

import '../../components/tutor_card.dart';

class VideoTutorListScreen extends StatelessWidget {
  //make to 'tutors'
  static String routeName = '/tutor-list/videos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose a Tutor",
          style: mediumTextBold,
        ),
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemCount: 6,
          itemBuilder: (context, index) {
            return BuildTutorCard(
              name: 'Graciela Felipe',
              email: 'felipemc@students.national-u.edu.ph',
              onTap: () {
                Navigator.pushNamed(context, '/tutor/videos');
              },
            );
          },
        ),
      ),
    );
  }
}
