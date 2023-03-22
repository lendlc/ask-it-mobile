import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/core/appointment/appointment_controller.dart';
import 'package:ask_it/core/appointment/appointment_dto.dart';
import 'package:ask_it/core/schedule/schedule_controller.dart';
import 'package:ask_it/core/schedule/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:intl/intl.dart';
import 'package:ndialog/ndialog.dart';

import '../../constants.dart';
import '../../components/tutor_card.dart';
import '../../core/basic_error.dart';

class ChooseScheduleDialog extends StatefulWidget {
  final List<Schedule> schedules;
  final void Function(Schedule) onSubmit;

  const ChooseScheduleDialog({
    super.key,
    required this.schedules,
    required this.onSubmit,
  });

  @override
  State<ChooseScheduleDialog> createState() => _ChooseScheduleDialogState();
}

class _ChooseScheduleDialogState extends State<ChooseScheduleDialog> {
  DateFormat _dateFormat = DateFormat('MMM d, EEE');
  DateFormat _timeFormat = DateFormat('h:mma');

  late Schedule selectedSchedule;

  @override
  void initState() {
    super.initState();
    selectedSchedule = widget.schedules.first;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all(16),
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Select date and Time',
        style: mediumTextBold,
      ),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(
            widget.schedules.length,
            (index) {
              final schedule = widget.schedules[index];
              final date = DateTime(
                schedule.start.year,
                schedule.start.month,
                schedule.start.day,
              );
              final startTime = _timeFormat.format(schedule.start);
              final endTime = _timeFormat.format(schedule.end);
              return RadioListTile<Schedule>(
                title: Text(
                  "${_dateFormat.format(date)} ($startTime - $endTime)",
                ),
                value: schedule,
                groupValue: selectedSchedule,
                onChanged: (value) {
                  setState(() {
                    selectedSchedule = value!;
                  });
                },
              );
            },
          ),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: RoundedButton(
            text: 'Continue',
            color: secondaryColor,
            textColor: Colors.white,
            press: () {
              widget.onSubmit(selectedSchedule);
            },
          ),
        )
      ],
    );
  }
}

class TutorListScreen extends StatelessWidget {
  final String subject;

  const TutorListScreen({Key? key, required this.subject}) : super(key: key);

  static String routeName = '/tutor-list';
  static Route<void> route({required String subject}) {
    return MaterialPageRoute(
      builder: (context) => TutorListScreen(
        subject: subject,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final schedulesProvider = subjectSchedulesProvider(subject);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          subject,
          style: mediumTextBold,
        ),
      ),
      body: Consumer(builder: (context, ref, _) {
        final schedulesAV = ref.watch(schedulesProvider);

        return schedulesAV.when(
          loading: () => Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => Center(
            child: Text(error.toString()),
          ),
          data: (schedules) {
            final tutors = schedules.map((e) => e.tutor).toList();
            final s = <num>{};
            final tutorsUnique = tutors.where((e) => s.add(e.id)).toList();

            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: tutorsUnique.length,
              itemBuilder: (context, index) {
                final tutor = tutorsUnique[index];
                final tutorSchedules = schedules.where((e) => e.userId == tutor.id).toList();
                final numberOfSchedules = tutorSchedules.length;

                return TutorCard(
                  tutor: tutor,
                  subtitle: 'Got $numberOfSchedules open slots. Tap to book.',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => ChooseScheduleDialog(
                        schedules: tutorSchedules,
                        onSubmit: (schedule) {
                          ProgressDialog.future<Either<BasicError, bool>>(
                            context,
                            future: ref.read(createAppointmentProvider).call(
                                  CreateAppointmentDto(
                                    status: 'approved',
                                    scheduleId: schedule.id,
                                    isArchived: false,
                                  ),
                                ),
                            title: Text('Booking appointment...'),
                            message: Text('Please wait...'),
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
                                if (r) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Successfully booked appointment.'),
                                      backgroundColor: secondaryColor,
                                    ),
                                  );

                                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                                }
                              },
                            );
                          });
                        },
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      }),
    );
  }
}
