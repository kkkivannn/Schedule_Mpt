import 'package:flutter/material.dart';

class NotHaveScheduleWidget extends StatelessWidget {
  const NotHaveScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 70,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffEAE9E5),
      ),
      child: const Text(
        'На этот день занятий нет',
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      ),
    );
  }
}
