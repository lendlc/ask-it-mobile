import 'package:ask_it/constants.dart';
import 'package:ask_it/providers/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TutorProfileScreen extends StatelessWidget {
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
              Provider.of<Auth>(context, listen: false).logout();
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              _buildProfileHeader(),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    'My Schedule',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.pushNamed(context, '/tutor/schedule');
                    },
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  buildScheduleCard(context),
                  buildScheduleCard(context),
                  buildScheduleCard(context),
                  buildScheduleCard(context),
                  buildScheduleCard(context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildScheduleCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: boxDecorationStyle,
      child: Row(
        children: [
          Icon(
            Icons.access_time,
            size: 32,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mon, March 5, 2021',
                    style: mediumTextW600,
                  ),
                  Text(
                    '7:00AM to 9:00AM',
                  )
                ],
              ),
            ),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(
                child: Text("Edit"),
                value: "/tutor/schedule/edit",
              ),
              PopupMenuItem(
                child: Text("Delete"),
                value: "/delete",
              ),
            ],
            onSelected: (route) {
              route != '/delete'
                  ? Navigator.pushNamed(context, route)
                  : showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return buildDeleteAlertDialog(context);
                      },
                    );
            },
          ),
        ],
      ),
    );
  }

  AlertDialog buildDeleteAlertDialog(BuildContext context) {
    return AlertDialog(
      title: Text('Delete Schedule'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              'Are you sure you want to do this action?',
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.black54),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Yes'),
          onPressed: () {
            //Send Request to API

            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Container _buildProfileHeader() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: boxDecorationStyle,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Container(
              color: Colors.red[100],
              height: 150,
              width: 150,
              child: Image.asset('assets/images/avatars/man_3.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Paolo Miguel Sta. Ana",
            style: mediumTextBold,
          ),
          Text(
            "staanapq@students.national-u.edu.ph",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            child: Container(
              child: Row(
                children: [
                  HeaderButton(
                    title: 'My Videos',
                    path: '/tutor/profile/videos',
                  ),
                  Spacer(),
                  HeaderButton(
                    title: 'Edit Profile',
                    path: '/profile/edit',
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

class HeaderButton extends StatelessWidget {
  final String title, path;

  const HeaderButton({
    Key key,
    this.title,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.9,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          backgroundColor: lightColor,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '$path');
        },
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
