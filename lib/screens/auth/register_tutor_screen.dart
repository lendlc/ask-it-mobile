import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class RegisterTutorScreen extends StatefulWidget {
  @override
  _RegisterTutorScreenState createState() => _RegisterTutorScreenState();
}

class _RegisterTutorScreenState extends State<RegisterTutorScreen> {
  String? _firstName, _lastName, _email, _password;

  //Reference to the Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFirstName() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'First Name',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: inputDecorationStyle,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'First Name is required';
              }

              return null;
            },
            onChanged: (String? val) {
              //Assigns state to variable.
              _firstName = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLastName() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Name',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: inputDecorationStyle,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Last Name is required';
              }

              return null;
            },
            onChanged: (String? val) {
              //Assigns state to variable.
              _lastName = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'School Email',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: inputDecorationStyle,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Email is required';
              }
              if (!val.contains('@students.national-u.edu.ph')) {
                return 'Please provide a valid NU email';
              }

              return null;
            },
            onChanged: (String? val) {
              //Assigns state to variable.
              _email = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: true,
            decoration: inputDecorationStyle,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? val) {
              if (val == null || val.isEmpty) {
                return 'Password is required';
              }
              if (val.length < 8) {
                return 'Password should atleast be 8 characters';
              }
              return null;
            },
            onChanged: (String? val) {
              //Assigns state to variable.
              _password = val?.trim();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: null,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      //Disables Overflow Warning when keyboard pops Out
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Create Profile',
                  style: largeTextBold,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      _buildFirstName(),
                      _buildLastName(),
                      _buildEmail(),
                      _buildPassword(),
                      SizedBox(height: size.height * 0.03),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: size.width * 0.4,
                          child: RoundedButton(
                            text: 'Next',
                            textColor: Colors.white,
                            color: secondaryColor,
                            press: () {
                              FocusScope.of(context).unfocus();

                              if (_formKey.currentState == null) {
                                return;
                              }

                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();

                              // Provider.of<Auth>(context, listen: false)
                              //     .register(
                              //   _firstName,
                              //   _lastName,
                              //   'tutor',
                              //   _email,
                              //   _password,
                              // );

                              //_formKey.currentState.reset();

                              //Move to Home Page
                              Navigator.pushNamed(
                                  context, '/register/tutor/subject');
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
