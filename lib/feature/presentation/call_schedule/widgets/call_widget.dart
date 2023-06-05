import 'package:flutter/material.dart';
import 'package:schedule_mpt/constants_images/constants.dart';
import 'package:schedule_mpt/constants_images/theme.dart';

class CallWidgets extends StatelessWidget {
  final int index;
  const CallWidgets({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 22),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? const Color(0xffEAE9E5)
            : const Color(0xff282720),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            fontSize: 15,
            title: "${TimeLessons.calls[index].id.toString()} Пара",
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          const Spacer(),
          CustomText(
            fontSize: 15,
            title: TimeLessons.calls[index].time.toString(),
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ],
      ),
    );
  }
}
