import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/screens/shared/profile_info_card.dart';
import 'package:flutter/material.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletons/skeletons.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: mediumTextBold,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.logout,
              semanticLabel: 'Sign Out',
              color: Colors.redAccent,
            ),
            onPressed: () {
              // Provider.of<Auth>(context, listen: false).logout();

              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //width: double.infinity,
          padding: EdgeInsets.all(16),
          //List Schedule List Container
          child: Column(
            children: <Widget>[
              ProfileInfoCard(
                actions: Container(
                  alignment: Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Consumer(builder: (context, ref, _) {
                      final busy =
                          ref.watch(userProfileProvider.select((value) => value.isLoading));

                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: lightColor,
                          elevation: 0.9,
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                        ),
                        onPressed: !busy
                            ? () {
                                Navigator.pushNamed(context, '/profile/edit');
                              }
                            : null,
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black54),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              // _ProfileInfoCard(),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Today', style: mediumTextW600),
              ),
              SizedBox(
                height: 5,
              ),
              _buildScheduleListItem(),
              _buildScheduleListItem(),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Tomorrow', style: mediumTextW600),
              ),
              SizedBox(
                height: 5,
              ),
              _buildScheduleListItem(),
              _buildScheduleListItem(),
            ],
          ),
        ),
      ),
    );
  }
}

class _buildScheduleListItem extends StatelessWidget {
  const _buildScheduleListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      //width: double.infinity,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 10),
      decoration: boxDecorationStyle,
      child: Row(
        children: <Widget>[
          Container(
            //occupy parent height (80)
            height: double.infinity,
            width: 70,
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.0,
                ),
              ),
            ),

            child: Center(
              child: Text(
                '4',
                style: TextStyle(
                  fontSize: largeText,
                  color: Colors.red[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Container(
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Rhon Emmanuel Casem',
                    style: TextStyle(
                      fontSize: mediumText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '7:00AM - 9:00AM',
                    style: TextStyle(
                      fontSize: defaultText,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Introduction to Java Programming',
                    style: TextStyle(
                      fontSize: defaultText,
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
