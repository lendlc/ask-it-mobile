import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = '/profile/edit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Stack(alignment: Alignment.center, children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Container(
                    color: primaryColor,
                    child: Image.asset(
                      'assets/images/avatar.png',
                      height: 150,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(300.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.black26,
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      color: lightColor,
                      iconSize: 42,
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile/update/avatar');
                      },
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 15,
              ),
              _buildEmailTF(
                title: 'First Name',
                value: 'John Lendl',
              ),
              _buildEmailTF(
                title: 'Last Name',
                value: 'Cuyugan',
              ),
              _buildEmailTF(
                title: 'Email',
                value: 'cuyuganjt@students.national-u.edu.ph',
              ),
              _buildPassword()
            ],
          ),
        ),
      ),
    );
  }
}

class _buildEmailTF extends StatelessWidget {
  final String title, value;

  const _buildEmailTF({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
              enabled: false,
              hintText: value,
              filled: true,
              fillColor: lightColor,
              isDense: true,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: lightColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildPassword() {
  return Builder(
    builder: (context) => Container(
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
            initialValue: "passwordplaceholder",
            readOnly: true,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              filled: true,
              fillColor: lightColor,
              isDense: true,
              suffixIcon: IconButton(
                color: Colors.black45,
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile/update/password');
                },
              ),
              //Border when user Uses the Text Field
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: lightColor),
              ),
              //Default Border Color
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: lightColor,
                  //width: 2.0,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
