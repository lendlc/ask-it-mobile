import 'package:ask_it/constants.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = '/profile/edit';

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
              ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Container(
                  color: primaryColor,
                  child: Consumer(
                    child: Image.asset(
                      'assets/images/avatar.png',
                      height: 150,
                    ),
                    builder: (context, ref, child) {
                      final userProfileAV = ref.watch(userProfileProvider);
                      return userProfileAV.maybeWhen(
                        orElse: () => child!,
                        data: (userProfile) => Image.asset(
                          userProfile.avatar,
                          height: 150,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Consumer(
                builder: (context, ref, _) {
                  final userProfileAV = ref.watch(userProfileProvider);

                  return userProfileAV.maybeWhen(
                    data: (userProfile) => _EditProfileTF(
                      title: 'Full Name',
                      value: userProfile.fullName,
                    ),
                    orElse: () => _EditProfileTF(
                      title: 'Full Name',
                      value: '',
                    ),
                  );
                },
              ),
              Consumer(
                builder: (context, ref, _) {
                  final userProfileAV = ref.watch(userProfileProvider);

                  return userProfileAV.maybeWhen(
                    data: (userProfile) => _EditProfileTF(
                      title: 'Email',
                      value: userProfile.email,
                    ),
                    orElse: () => _EditProfileTF(
                      title: 'Email',
                      value: '',
                    ),
                  );
                },
              ),
              _buildPassword()
            ],
          ),
        ),
      ),
    );
  }
}

class _EditProfileTF extends StatelessWidget {
  final String title, value;

  const _EditProfileTF({
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
