import 'package:flutter/material.dart';

extension DateTimeExtension on DateTime {
  DateTime nextWeekday(int day) {
    return this.add(
      Duration(
        days: (day - this.weekday) % DateTime.daysPerWeek,
      ),
    );
  }
}

extension TimeOfDayExtension on TimeOfDay {
  Duration getDuration(TimeOfDay time) {
    final a = DateTime(2023, 1, 1, this.hour, this.minute);
    final b = DateTime(2023, 1, 1, time.hour, time.minute);
    return a.difference(b);
  }
}
