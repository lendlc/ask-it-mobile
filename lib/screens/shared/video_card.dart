import 'dart:typed_data';

import 'package:ask_it/core/video/video_model.dart';
import 'package:ask_it/screens/shared/video_player_screen.dart';
import 'package:ask_it/screens/tutor/tutor_edit_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../constants.dart';

class VideoCard extends StatefulWidget {
  final Video video;
  final bool editable;

  VideoCard(this.video, {this.editable = false});

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  Uint8List? thumbnailData;

  @override
  void initState() {
    super.initState();
    VideoThumbnail.thumbnailData(video: widget.video.file).then((value) {
      if (value == null) return;

      setState(() {
        thumbnailData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        decoration: boxDecorationStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.black45,
              child: thumbnailData != null
                  ? Image.memory(thumbnailData!, fit: BoxFit.fitWidth)
                  : Center(child: CircularProgressIndicator()),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.video.title,
                      style: mediumTextW600,
                    ),
                  ),
                  if (widget.editable)
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.of(context).push(TutorEditVideoScreen.route(video: widget.video));
                      },
                    )
                  else
                    SizedBox(height: 48)
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(VideoPlayerScreen.route(video: widget.video));
      },
    );
  }
}
