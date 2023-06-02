import 'package:ask_it/core/appointment/appointment_model.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:ask_it/screens/shared/logout_button.dart';
import 'package:ask_it/screens/shared/profile_info_card.dart';
import 'package:flutter/material.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:skeletons/skeletons.dart';

import '../../core/appointment/appointment_controller.dart';

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
          LogoutButton(),
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
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Today', style: mediumTextW600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Consumer(
                    builder: (context, ref, _) {
                      final appointmentsAV = ref.watch(myAppointmentsTodayProvider);
                      return appointmentsAV.when(
                        error: (error, stackTrace) => Center(
                          child: Text(error.toString()),
                        ),
                        loading: () => SizedBox(height: 150, child: SkeletonListView()),
                        data: (appointments) {
                          if (appointments.isEmpty) {
                            return SizedBox(
                              height: 100,
                              child: Center(
                                child: Text('No appointments scheduled for today'),
                              ),
                            );
                          }
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(appointments.length, (index) {
                              final appointment = appointments[index];
                              return _AppointmentListItem(appointment: appointment);
                            }),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Tomorrow', style: mediumTextW600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Consumer(
                    builder: (context, ref, _) {
                      final appointmentsAV = ref.watch(myAppointmentsTomorrowProvider);
                      return appointmentsAV.when(
                        error: (error, stackTrace) => Center(
                          child: Text(error.toString()),
                        ),
                        loading: () => SizedBox(height: 150, child: SkeletonListView()),
                        data: (appointments) {
                          if (appointments.isEmpty) {
                            return SizedBox(
                              height: 100,
                              child: Center(
                                child: Text('No appointments scheduled for tomorrow'),
                              ),
                            );
                          }
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(appointments.length, (index) {
                              final appointment = appointments[index];
                              return _AppointmentListItem(appointment: appointment);
                            }),
                          );
                        },
                      );
                    },
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

class _AppointmentListItem extends StatelessWidget {
  final Appointment appointment;

  const _AppointmentListItem({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('hh:mm a');
    final startTime = timeFormat.format(appointment.start);
    final endTime = timeFormat.format(appointment.end);

    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 10),
      decoration: boxDecorationStyle,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 75,
              width: 75,
              color: primaryColor,
              child: Image.asset('assets/images/avatars/1.png'),
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
                    appointment.tutorName,
                    style: TextStyle(
                      fontSize: mediumText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$startTime - $endTime',
                    style: TextStyle(
                      fontSize: defaultText,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    appointment.subject,
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
