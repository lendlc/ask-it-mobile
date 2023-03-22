import 'package:ask_it/constants.dart';
import 'package:ask_it/core/video/video_controller.dart';
import 'package:ask_it/screens/shared/video_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TutorVideoListScreen extends StatelessWidget {
  static String routeName = '/tutor/profile/videos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Videos',
          style: mediumTextBold,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tutor/profile/videos/upload');
            },
            child: Text(
              "Upload",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final myVideosAV = ref.watch(myVideosProvider);

          return myVideosAV.maybeWhen(
            orElse: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (videos) {
              if (videos.isEmpty) {
                return Center(
                  child: Text(
                    'No videos uploaded yet',
                    style: mediumTextW600,
                  ),
                );
              }

              return ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  final video = videos[index];
                  return VideoCard(video);
                },
              );
            },
          );
        },
      ),
    );
  }
}
