import 'package:flutter/material.dart';
import 'package:schedule_mpt/feature/presentation/components/schedule_builder.dart';
import 'package:schedule_mpt/feature/presentation/hello_page/view/hello_page.dart';
import 'package:schedule_mpt/feature/presentation/home_page/view/home_page.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScheduleBuilder(
      isNotHaveSchedule: (context) => const HelloPage(),
      isWaiting: (context) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      isHaveSchedule: (context, value, child) => HomePage(schedule: value),
    );
  }
}
