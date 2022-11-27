import 'package:flutter/material.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti/schedule_entiti.dart';
import 'package:schedule_mpt/feature/domain/entiti/schedule/week/week_entiti.dart';


class HomePage extends StatelessWidget {
  final List<ScheduleEntiti> schedule;
  final WeekEntiti weekEntiti;
  const HomePage({super.key, required this.schedule, required this.weekEntiti});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(weekEntiti.week),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              schedule[0].info.day,
            ),
            Text(
              schedule[0].info.place,
            ),
            Text(
              schedule[0].subjects[0].subject.subject,
            ),
            Text(
              schedule[0].subjects[0].teacher,
            ),
          ],
        ),
      ),
    );
  }
}
