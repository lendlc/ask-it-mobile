import 'package:ask_it/core/video/video_model.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class VideoPlayerScreen extends StatefulWidget {
  final Video video;

  const VideoPlayerScreen({super.key, required this.video});

  static Route<void> route({required Video video}) {
    return MaterialPageRoute(
      builder: (context) => VideoPlayerScreen(
        video: video,
      ),
    );
  }

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late final BetterPlayerController _videoController;

  @override
  void initState() {
    _videoController = BetterPlayerController(
      BetterPlayerConfiguration(
        aspectRatio: videoAspectRatio,
        fit: BoxFit.contain,
      ),
      betterPlayerDataSource: BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        widget.video.file,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Avatar',
          style: mediumTextBold,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          AspectRatio(
            aspectRatio: videoAspectRatio,
            // child: Container(color: Colors.black),
            child: BetterPlayer(controller: _videoController),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.video.title,
                    style: largeTextBold,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Uploaded by ${widget.video.tutor.user.fullName}',
                    style: mediumTextW600,
                    textAlign: TextAlign.start,
                  ),
                  const Divider(),
                  Text(
                    widget.video.description,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
