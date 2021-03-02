import 'package:ask_it/components/rounded_button.dart';
import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class TutorEditScheduleScreen extends StatefulWidget {
  static final String routeName = '/tutor/schedule/edit';
  @override
  _TutorEditScheduleScreenState createState() =>
      _TutorEditScheduleScreenState();
}

class _TutorEditScheduleScreenState extends State<TutorEditScheduleScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime;

  @override
  Widget build(BuildContext context) {
    void _showDatePicker() async {
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 0)),
        lastDate: DateTime(2022),
      );
      setState(() {
        selectedDate = picked;
      });
    }

    void _showStartTimePicker() async {
      final TimeOfDay start = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: 12,
          minute: 00,
        ),
      );

      setState(() {
        startTime = start;
      });
    }

    void _showEndTimePicker() async {
      final TimeOfDay end = await showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: startTime.hour,
          minute: startTime.minute,
        ),
      );

      if (end != null) {
        if (end.hour.compareTo(startTime.hour) < 0) {
          return setState(() {
            endTime = null;
          });
        }

        return setState(() {
          endTime = end;
        });
      }

      setState(() {
        endTime = null;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Schedule',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDateField(_showDatePicker),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: _buildStartTimeField(_showStartTimePicker, context),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: _buildEndTimeField(_showEndTimePicker, context),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            RoundedButton(
              text: 'Save',
              color: secondaryColor,
              textColor: Colors.white,
              press: () {
                //Send request to API

                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  Column _buildStartTimeField(
      void _showStartTimePicker(), BuildContext context) {
    return Column(
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
          controller: TextEditingController(
            text: startTime == null
                ? 'Start Time'
                : startTime.format(context).toString(),
          ),
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
    );
  }

  Column _buildEndTimeField(
    void _showEndTimePicker(),
    BuildContext context,
  ) {
    return Column(
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
          controller: TextEditingController(
            text: endTime == null
                ? 'End Time'
                : endTime.format(context).toString(),
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.timer_outlined,
              color: Colors.black45,
            ),
            filled: true,
            fillColor: lightColor,
            isDense: true,
            enabled: startTime == null ? false : true,
            focusedBorder: inputBorder,
            disabledBorder: inputBorder,
            enabledBorder: inputBorder,
            errorBorder: errorInputBorder,
            focusedErrorBorder: errorInputBorder,
          ),
        ),
      ],
    );
  }

  Column _buildDateField(void _showDatePicker()) {
    initializeDateFormatting('en', null);
    return Column(
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
          controller: TextEditingController(
            text: selectedDate == null
                ? 'Select Date'
                : DateFormat('EEE, MMM d, ' 'yyyy').format(selectedDate),
          ),
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
    );
  }
}
