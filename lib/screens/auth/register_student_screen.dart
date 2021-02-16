import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class RegisterStudentScreen extends StatefulWidget {
  @override
  _RegisterStudentScreenState createState() => _RegisterStudentScreenState();
}

class _RegisterStudentScreenState extends State<RegisterStudentScreen> {
  String _firstName, _lastName, _email, _password;

  //Reference to the Form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFirstName() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
            decoration: InputDecoration(
              hintText: 'First Name',
              filled: true,
              fillColor: lightColor,
              //Border when user Uses the Text Field
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.black26,
                ),
              ),
              //Default Border Color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: lightColor,
                  //width: 2.0,
                ),
              ),
              //Border When there is an Error
              errorBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            validator: (String val) {
              if (val.isEmpty) {
                return 'First Name is required';
              }
            },
            onSaved: (String val) {
              //Assigns state to variable.
              _firstName = val;
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: 'Last Name',
              filled: true,
              fillColor: lightColor,
              //Border when user Uses the Text Field
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.black26,
                ),
              ),
              //Default Border Color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: lightColor,
                  //width: 2.0,
                ),
              ),
              //Border When there is an Error
              errorBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            validator: (String val) {
              if (val.isEmpty) {
                return 'Last Name is required';
              }
            },
            onSaved: (String val) {
              //Assigns state to variable.
              _lastName = val;
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
            decoration: InputDecoration(
              hintText: 'Email',
              filled: true,
              fillColor: lightColor,
              //Border when user Uses the Text Field
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.black26,
                ),
              ),
              //Default Border Color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: lightColor,
                  //width: 2.0,
                ),
              ),
              //Border When there is an Error
              errorBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            validator: (String val) {
              if (val.isEmpty) {
                return 'Email is required';
              }
            },
            onSaved: (String val) {
              //Assigns state to variable.
              _email = val;
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
            decoration: InputDecoration(
              hintText: 'Password',
              filled: true,
              fillColor: lightColor,
              //Border when user Uses the Text Field
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.black26,
                ),
              ),
              //Default Border Color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: lightColor,
                  //width: 2.0,
                ),
              ),
              //Border When there is an Error
              errorBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
            ),
            validator: (String val) {
              if (val.isEmpty) {
                return 'First Name is required';
              } else
                return '';
            },
            onSaved: (String val) {
              //Assigns state to variable.
              _password = val;
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
            width: double.infinity,
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
                Container(
                  width: size.width * 0.9,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        _buildFirstName(),
                        _buildLastName(),
                        _buildEmail(),
                        _buildPassword(),
                        SizedBox(height: size.height * 0.03),
                        RoundedButton(
                          color: primaryColor,
                          press: () {
                            if (!_formKey.currentState.validate()) {
                              return;
                            }
                            _formKey.currentState.save();

                            print(_firstName);
                            print(_lastName);
                            print(_email);
                            print(_password);

                            //Move to Home Page
                            Navigator.pushNamed(context, '/login');
                          },
                          text: 'Create my Account',
                          textColor: Colors.black,
                        )
                      ],
                    ),
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
