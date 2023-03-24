import 'package:ask_it/constants.dart';
import 'package:ask_it/core/video/video_controller.dart';
import 'package:ask_it/screens/tutee/video_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/tutor_card.dart';
import '../../core/schedule/schedule_model.dart';

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
      body: Consumer(builder: (context, ref, _) {
        final uploadersAV = ref.watch(uploadersProvider);

        return uploadersAV.when(
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) => Center(
            child: Text(error.toString()),
          ),
          data: (uploaders) {
            if (uploaders.isEmpty) {
              return Center(
                child: Text('No tutors found'),
              );
            }

            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: uploaders.length,
              itemBuilder: (context, index) {
                final uploader = uploaders[index];
                final tutor = Tutor(
                  id: uploader.id,
                  name: uploader.fullName,
                );
                return TutorCard(
                  tutor: tutor,
                  onTap: () {
                    Navigator.of(context).push(VideoListScreen.route(uploader: uploader));
                  },
                );
              },
            );
          },
        );
      }),
    );
  }
}
