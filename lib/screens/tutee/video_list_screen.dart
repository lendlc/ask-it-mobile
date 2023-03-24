import 'package:ask_it/constants.dart';
import 'package:ask_it/core/video/video_controller.dart';
import 'package:ask_it/core/video/video_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/video_card.dart';

class VideoListScreen extends StatelessWidget {
  final VideoUploaderUser uploader;

  const VideoListScreen({super.key, required this.uploader});

  static String routeName = '/tutor/videos';
  static Route<void> route({required VideoUploaderUser uploader}) {
    return MaterialPageRoute(
      builder: (context) => VideoListScreen(uploader: uploader),
    );
  }

  @override
  Widget build(BuildContext context) {
    final videosProvider = tutorVideosProvider(uploader.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          uploader.fullName,
          style: mediumTextBold,
        ),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final videosAV = ref.watch(videosProvider);

          return videosAV.when(
            loading: () => Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
            data: (videos) {
              if (videos.isEmpty) {
                return Center(
                  child: Text('No videos found'),
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

          // return ListView.builder(
          //   padding: EdgeInsets.symmetric(horizontal: 16),
          //   itemCount: 4,
          //   itemBuilder: (context, index) {
          //     return TutorialCard();
          //   },
          // );
        },
      ),
    );
  }
}

class TutorialCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/tutors/videos/name');
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
        decoration: boxDecorationStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              color: Colors.black45,
              child: Center(
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 100,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'How to Declare Variables',
                style: mediumTextW600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
