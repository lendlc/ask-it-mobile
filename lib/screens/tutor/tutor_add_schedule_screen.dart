import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:ask_it/core/extensions.dart';
import 'package:ask_it/core/schedule/schedule_controller.dart';
import 'package:ask_it/core/schedule/schedule_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart' show Either;
import 'package:intl/intl.dart';
import 'package:ndialog/ndialog.dart';

import '../../components/course_card.dart';
import '../../core/basic_error.dart';

class TutorAddScheduleScreen extends StatefulWidget {
  static final String routeName = '/tutor/schedule';
  @override
  _TutorAddScheduleScreen createState() => _TutorAddScheduleScreen();
}

class _TutorAddScheduleScreen extends State<TutorAddScheduleScreen> {
  DateFormat _dateFormat = DateFormat('EEE, MMM d, yyyy');

  int? selectedSubject;

  DateTime selectedDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay? endTime;

  late final TextEditingController _dateController;
  late final TextEditingController _startTimeController;
  late final TextEditingController _endTimeController;

  bool get canSubmit => selectedSubject != null && endTime != null;

  @override
  void initState() {
    _dateController = TextEditingController(text: _dateFormat.format(selectedDate));
    _startTimeController = TextEditingController();
    _endTimeController = TextEditingController();
    super.initState();
  }

  void _showDatePicker() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2023, 12, 31),
    );
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = _dateFormat.format(selectedDate);
      });
    }
  }

  void _showStartTimePicker() async {
    final start = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(
        hour: 12,
        minute: 00,
      ),
    );
    if (start != null) {
      setState(() {
        startTime = start;
        _startTimeController.text = startTime.format(context);
      });
    }
  }

  void _showEndTimePicker() async {
    final end = await showTimePicker(
      context: context,
      helpText: 'Select end time.\nMaximum 2 hours from start time',
      initialTime: TimeOfDay(
        hour: startTime.hour,
        minute: startTime.minute,
      ),
    );
    if (end != null) {
      if (end.hour.compareTo(startTime.hour) < 0 ||
          end.getDuration(startTime) > Duration(hours: 2)) {
        return setState(() {
          endTime = null;
          _endTimeController.text = '';
        });
      }

      return setState(() {
        endTime = end;
        _endTimeController.text = endTime!.format(context);
      });
    }

    setState(() {
      endTime = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimeController.text = startTime.format(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add new Schedule',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Subject",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            GridView.count(
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: List<Widget>.generate(
                subjects.length,
                (index) => CourseTile(
                  title: subjects[index]['title']!,
                  imagePath: subjects[index]['imagePath']!,
                  isSelected: selectedSubject == index,
                  onTap: () {
                    setState(() {
                      selectedSubject = index;
                    });
                  },
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Date",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  onTap: _showDatePicker,
                  readOnly: true,
                  controller: _dateController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.date_range_rounded,
                      color: Colors.black45,
                    ),
                    filled: true,
                    fillColor: lightColor,
                    isDense: true,
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                    errorBorder: errorInputBorder,
                    focusedErrorBorder: errorInputBorder,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Time",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        onTap: _showStartTimePicker,
                        readOnly: true,
                        controller: _startTimeController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.timer_outlined,
                            color: Colors.black45,
                          ),
                          filled: true,
                          fillColor: lightColor,
                          isDense: true,
                          focusedBorder: inputBorder,
                          enabledBorder: inputBorder,
                          errorBorder: errorInputBorder,
                          focusedErrorBorder: errorInputBorder,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "End Time",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        onTap: _showEndTimePicker,
                        readOnly: true,
                        controller: _endTimeController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.timer_outlined,
                            color: Colors.black45,
                          ),
                          filled: true,
                          fillColor: lightColor,
                          isDense: true,
                          // enabled: startTime == null ? false : true,
                          focusedBorder: inputBorder,
                          disabledBorder: inputBorder,
                          enabledBorder: inputBorder,
                          errorBorder: errorInputBorder,
                          focusedErrorBorder: errorInputBorder,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Consumer(builder: (context, ref, _) {
              return RoundedButton(
                text: 'Save',
                color: secondaryColor,
                textColor: Colors.white,
                press: canSubmit
                    ? () {
                        final start = DateTime(
                          selectedDate.year,
                          selectedDate.month,
                          selectedDate.day,
                          startTime.hour,
                          startTime.minute,
                        );
                        final end = DateTime(
                          selectedDate.year,
                          selectedDate.month,
                          selectedDate.day,
                          endTime!.hour,
                          endTime!.minute,
                        );

                        ProgressDialog.future<Either<BasicError, bool>>(
                          context,
                          future: ref.read(createScheduleProvider).call(
                                CreateScheduleDto(
                                  subject: subjects[selectedSubject!]['title']!,
                                  start: start,
                                  end: end,
                                  isAvailable: true,
                                ),
                              ),
                          title: Text('Creating schedule...'),
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
                                    content: Text('Successfully created schedule.'),
                                    backgroundColor: secondaryColor,
                                  ),
                                );

                                Navigator.pop(context);
                              }
                            },
                          );
                        });
                      }
                    : null,
              );
            })
          ],
        ),
      ),
    );
  }
}
