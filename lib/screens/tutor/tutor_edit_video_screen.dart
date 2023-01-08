import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class TutorEditVideoScreen extends StatefulWidget {
  static final String routeName = '/tutor/videos/edit';
  @override
  _TutorEditVideoScreenState createState() => _TutorEditVideoScreenState();
}

class _TutorEditVideoScreenState extends State<TutorEditVideoScreen> {
  String? title, description;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildUploadVideoContainer() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: lightColor,
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
            'Upload Video',
            style: mediumTextW600,
          )
        ],
      ),
    );
  }

  Widget descriptionTF() {
    return Column(
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
          initialValue:
              'Im just a really long text just trying to fill up space for the demo. This is made with flutter and NodeJS developed by.. me!',
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
    );
  }

  Widget titleTF() {
    return Column(
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
          initialValue: 'Im a video title',
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: inputDecorationStyle,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Title is required';
            }
            return null;
          },
          onChanged: (value) {
            title = value;
          },
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Video',
          style: mediumTextBold,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            color: Colors.red,
            onPressed: () {
              //Dialog to delete video,

              //If yes, send request to server

              //Go back to router
              Navigator.pop(context);
            },
          )
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
                _buildUploadVideoContainer(),
                SizedBox(
                  height: 16,
                ),
                titleTF(),
                descriptionTF(),
                RoundedButton(
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
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
