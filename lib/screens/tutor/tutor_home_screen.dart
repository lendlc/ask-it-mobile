import 'package:ask_it/components/home_screen_header.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TutorHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeScreenHeader(
                message: 'Here are your appointments',
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                'Today',
                style: smallTextW600,
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: <Widget>[
                  AppointmentCard(
                    name: "Lendl Cuyugan",
                    time: "7:00AM - 8:00AM",
                    suject: "Introduction to Java Programming",
                  ),
                  AppointmentCard(
                    name: "Paolo Sta. Ana",
                    time: "10:00AM - 11:00AM",
                    suject: "Introduction to Java Programming",
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Tomorrow',
                style: smallTextW600,
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: <Widget>[
                  AppointmentCard(
                    name: "Paolo Sta. Ana",
                    time: "1:00PM - 2:00PM",
                    suject: "Introduction to Java Programming",
                  ),
                  AppointmentCard(
                    name: "Graciela Felipe",
                    time: "5:00PM - 6:00PM",
                    suject: "Introduction to Java Programming",
                  ),
                  AppointmentCard(
                    name: "Rhon Casem",
                    time: "1:00PM - 2:00PM",
                    suject: "Introduction to Java Programming",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final String name, time, suject;

  const AppointmentCard({
    Key key,
    @required this.name,
    @required this.time,
    @required this.suject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 8),
      //height: 100,
      decoration: boxDecorationStyle,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 75,
              width: 75,
              color: primaryColor,
              child: Image.asset('assets/images/avatars/man_1.png')
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: mediumTextBold,
                  ),
                  Text(
                    time,
                  ),
                  Text(
                    suject,
                    style: TextStyle(fontSize: smallText),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
