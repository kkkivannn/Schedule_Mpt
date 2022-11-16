import 'package:flutter/material.dart';

import 'package:schedule_mpt/feature/domain/entiti/schedule/schedule_entiti.dart';

class HomePage extends StatelessWidget {
  final List<ScheduleEntiti> schedule;
  const HomePage({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
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
