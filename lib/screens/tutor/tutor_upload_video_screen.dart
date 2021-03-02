import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class TutorUploadVideoScreen extends StatefulWidget {
  static final String routeName = '/tutor/profile/videos/upload';

  @override
  _TutorUploadVideoScreenState createState() => _TutorUploadVideoScreenState();
}

class _TutorUploadVideoScreenState extends State<TutorUploadVideoScreen> {
  String title, description;

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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: inputDecorationStyle,
          validator: (value) {
            if (value.isEmpty) {
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
                _buildUploadVideoContainer(),
                SizedBox(
                  height: 16,
                ),
                titleTF(),
                descriptionTF(),
                RoundedButton(
                  text: 'Upload Video',
                  color: secondaryColor,
                  textColor: Colors.white,
                  press: () {
                    //close keyboard upon clicking button
                    FocusScope.of(context).unfocus();

                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
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
