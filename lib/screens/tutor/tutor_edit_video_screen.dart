import 'dart:typed_data';

import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:ask_it/core/video/video_controller.dart';
import 'package:ask_it/core/video/video_dto.dart';
import 'package:ask_it/core/video/video_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:ndialog/ndialog.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../core/basic_error.dart';

class TutorEditVideoScreen extends StatefulWidget {
  final Video video;

  const TutorEditVideoScreen({Key? key, required this.video}) : super(key: key);

  static final String routeName = '/tutor/videos/edit';
  static Route<void> route({required Video video}) {
    return MaterialPageRoute(
      builder: (context) => TutorEditVideoScreen(
        video: video,
      ),
    );
  }

  @override
  _TutorEditVideoScreenState createState() => _TutorEditVideoScreenState();
}

class _TutorEditVideoScreenState extends State<TutorEditVideoScreen> {
  Uint8List? thumbnailData;

  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    _titleController = TextEditingController(text: widget.video.title);
    _descriptionController = TextEditingController(text: widget.video.description);

    VideoThumbnail.thumbnailData(video: widget.video.file).then((value) {
      if (value == null) return;

      setState(() {
        thumbnailData = value;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Video',
          style: mediumTextBold,
        ),
        actions: [
          Consumer(builder: (context, ref, _) {
            return IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                NAlertDialog(
                  dialogStyle: DialogStyle(titleDivider: true),
                  title: Text('Are you sure?'),
                  content: Text('Are you sure you want to delete this video?'),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Yes'),
                      onPressed: () => Navigator.of(context).pop(true),
                    ),
                    TextButton(
                      child: Text('Cancel', style: TextStyle(color: Colors.red)),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                  ],
                ).show<bool>(context).then((perform) {
                  if (perform == null || !perform) return;

                  ProgressDialog.future<Either<BasicError, bool>>(
                    context,
                    future: ref.read(deleteVideoProvider).call(widget.video.id),
                    message: Text('Deleting video...'),
                    title: Text('Please wait...'),
                    dismissable: false,
                  ).then((value) {
                    if (value == null) return;

                    value.fold(
                      (l) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(l.message),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                      (r) {
                        if (r) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Successfully deleted video.'),
                              backgroundColor: secondaryColor,
                            ),
                          );
                          ref.invalidate(myVideosProvider);
                          Navigator.of(context).pop();
                        }
                      },
                    );
                  });
                });
              },
            );
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: thumbnailData != null
                        ? SizedBox(
                            width: double.infinity,
                            child: Image.memory(
                              thumbnailData!,
                              fit: BoxFit.fitWidth,
                            ),
                          )
                        : CircularProgressIndicator(),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _titleController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: inputDecorationStyle,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Title is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _descriptionController,
                      minLines: 4,
                      maxLines: 5,
                      maxLength: 250,
                      decoration: inputDecorationStyle,
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
                Consumer(builder: (context, ref, _) {
                  return RoundedButton(
                    text: 'Save',
                    color: secondaryColor,
                    textColor: Colors.white,
                    press: () {
                      //close keyboard upon clicking button
                      FocusScope.of(context).unfocus();

                      if (_formKey.currentState == null) {
                        return;
                      }

                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      //validate fields

                      //if pass, send request

                      //route back to videos.
                      ProgressDialog.future<Either<BasicError, bool>>(
                        context,
                        future: ref.read(updateVideoProvider(widget.video.id)).call(
                              UpdateVideoDto(
                                title: _titleController.text,
                                description: _descriptionController.text,
                              ),
                            ),
                        title: Text('Updating video...'),
                        message: Text('Please wait...'),
                        dismissable: false,
                      ).then((value) {
                        if (value == null) return;

                        value.fold(
                          (l) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(l.message),
                                backgroundColor: Colors.red,
                              ),
                            );
                          },
                          (r) {
                            if (r) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Successfully updated video.'),
                                  backgroundColor: secondaryColor,
                                ),
                              );
                              ref.invalidate(myVideosProvider);
                              Navigator.pop(context);
                            }
                          },
                        );
                      });
                    },
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
