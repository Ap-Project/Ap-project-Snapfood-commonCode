import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateAndTimeRow extends StatelessWidget {
  final DateTime dayAndMonth;
  final DateTime hourAndMinute;

  DateAndTimeRow(this.dayAndMonth, this.hourAndMinute);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_today,
          size: 20.0,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(DateFormat('MMMd').format(dayAndMonth)),
        SizedBox(
          width: 10.0,
        ),
        Icon(
          Icons.watch_later_outlined,
          size: 20.0,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(DateFormat('hh:mm').format(hourAndMinute)),
      ],
    );
  }
}
