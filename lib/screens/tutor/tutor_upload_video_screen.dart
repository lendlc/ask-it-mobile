import 'dart:io';

import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:ask_it/core/video/video_controller.dart';
import 'package:ask_it/core/video/video_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:image_picker/image_picker.dart';
import 'package:ndialog/ndialog.dart';

import '../../core/basic_error.dart';

class TutorUploadVideoScreen extends StatefulWidget {
  static final String routeName = '/tutor/profile/videos/upload';

  @override
  _TutorUploadVideoScreenState createState() => _TutorUploadVideoScreenState();
}

class _TutorUploadVideoScreenState extends State<TutorUploadVideoScreen> {
  XFile? video;

  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  final ImagePicker _picker = ImagePicker();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool get _canSubmit => video != null;

  @override
  void initState() {
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Video',
          style: mediumTextBold,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () async {
                    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);

                    if (video == null) {
                      return;
                    }

                    setState(() {
                      this.video = video;
                      _titleController.text = video.name;
                    });
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: video == null ? lightColor : primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.cloud_upload),
                          iconSize: 80,
                          onPressed: () {},
                        ),
                        Text(
                          video == null ? 'Select a video' : 'Video selected',
                          style: mediumTextW600,
                        ),
                      ],
                    ),
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
                    ),
                    SizedBox(
                      height: 32,
                    ),
                  ],
                ),
                Consumer(builder: (context, ref, _) {
                  return RoundedButton(
                    text: 'Upload Video',
                    color: secondaryColor,
                    textColor: Colors.white,
                    press: _canSubmit
                        ? () {
                            //close keyboard upon clicking button
                            FocusScope.of(context).unfocus();

                            if (_formKey.currentState == null) {
                              return;
                            }

                            if (!_formKey.currentState!.validate()) {
                              return;
                            }

                            _formKey.currentState!.save();

                            ProgressDialog.future<Either<BasicError, bool>>(
                              context,
                              future: ref.read(uploadVideoProvider).call(
                                    UploadVideoDto(
                                      title: _titleController.text,
                                      description: _descriptionController.text,
                                      file: File(video!.path),
                                    ),
                                  ),
                              title: Text('Uploading video...'),
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
                                        content: Text('Successfully uploaded video.'),
                                        backgroundColor: secondaryColor,
                                      ),
                                    );
                                    ref.invalidate(myVideosProvider);
                                    Navigator.pop(context);
                                  }
                                },
                              );
                            });
                          }
                        : null,
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
