import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class RegisterStudentScreen extends StatefulWidget {
  @override
  _RegisterStudentScreenState createState() => _RegisterStudentScreenState();
}

class _RegisterStudentScreenState extends State<RegisterStudentScreen> {
  String? _firstName, _lastName, _email, _password;
  final String role = 'tutee';
  String? emailIsTakenError;
  bool emailIsTaken = false;

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

              if (isNumeric(val) == true) {
                return 'Invalid value';
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
              if (isNumeric(val) == true) {
                return 'Invalid value';
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
              if (emailIsTaken == true) {
                return emailIsTakenError;
              }
              return null;
            },
            onChanged: (String? val) {
              //Assigns state to variable.
              _email = val?.trim();
              setState(() {
                emailIsTaken = false;
              });
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
            //height: size.height,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Create Profile',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
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
                      RoundedButton(
                        text: 'Create my Account',
                        textColor: Colors.black,
                        color: primaryColor,
                        press: () async {
                          //close keyboard upon clicking button
                          FocusScope.of(context).unfocus();

                          if (_formKey.currentState == null) {
                            return;
                          }

                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          _formKey.currentState!.save();

                          // Provider.of<Auth>(context, listen: false).register(
                          //   _firstName,
                          //   _lastName,
                          //   'tutee',
                          //   _email,
                          //   _password,
                          // );

                          _formKey.currentState!.reset();
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/login', (_) => false);
                        },
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

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
