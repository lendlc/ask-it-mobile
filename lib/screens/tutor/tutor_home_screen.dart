import 'package:ask_it/components/home_screen_header.dart';
import 'package:ask_it/core/appointment/appointment_controller.dart';
import 'package:ask_it/core/appointment/appointment_model.dart';
import 'package:ask_it/core/chat/chat_controller.dart';
import 'package:ask_it/core/chat/chat_dto.dart';
import 'package:ask_it/core/chat/chat_model.dart';
import 'package:ask_it/screens/tutee/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:ndialog/ndialog.dart';
import 'package:skeletons/skeletons.dart';

import '../../constants.dart';
import '../../core/basic_error.dart';

class TutorHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                          children: List.generate(appointments.length, (index) {
                            final appointment = appointments[index];
                            return _AppointmentListItem(
                              appointment: appointment,
                              onTap: () {
                                NAlertDialog(
                                  dialogStyle: DialogStyle(titleDivider: true),
                                  title: Text('Initiate chat?'),
                                  content: Text(
                                      'Are you sure you want to initiate tutoring with this student?'),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Yes'),
                                      onPressed: () => Navigator.of(context).pop(true),
                                    ),
                                    TextButton(
                                      child: Text('Cancel', style: TextStyle(color: Colors.red)),
                                      onPressed: () => Navigator.of(context).pop(false),
                                    ),
                                  ],
                                ).show<bool>(context).then((perform) {
                                  if (perform == null || !perform) return;

                                  ProgressDialog.future<Either<BasicError, Conversation>>(
                                    context,
                                    future: ref.read(createConversationProvider).call(
                                          CreateConversationDto(
                                            tutorId: appointment.tutorId,
                                            tuteeId: appointment.tuteeId,
                                            appointmentId: appointment.id,
                                          ),
                                        ),
                                    message: Text('Creating conversation...'),
                                    title: Text('Please wait...'),
                                    dismissable: false,
                                  ).then((value) {
                                    if (value == null) return;

                                    value.fold(
                                      (l) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text(l.message),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                      },
                                      (r) {
                                        Navigator.of(context).push(
                                          ChatScreen.route(conversation: r),
                                        );
                                      },
                                    );
                                  });
                                });
                              },
                            );
                          }),
                        );
                      },
                    );
                  },
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
                          children: List.generate(appointments.length, (index) {
                            final appointment = appointments[index];
                            return _AppointmentListItem(
                              appointment: appointment,
                            );
                          }),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AppointmentListItem extends StatelessWidget {
  final Appointment appointment;
  final void Function()? onTap;

  const _AppointmentListItem({
    Key? key,
    required this.appointment,
    this.onTap,
  }) : super(key: key);

  num get avatarIndex {
    num index = appointment.tuteeId % 7;
    return index == 0 ? 1 : index;
  }

  String get avatar => 'assets/images/avatars/$avatarIndex.png';

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('hh:mm a');
    final startTime = timeFormat.format(appointment.start);
    final endTime = timeFormat.format(appointment.end);

    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                child: Image.asset(avatar),
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
                      appointment.tuteeName,
                      style: mediumTextBold,
                    ),
                    Text(
                      '$startTime - $endTime',
                    ),
                    Text(
                      appointment.subject,
                      style: TextStyle(fontSize: smallText),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
