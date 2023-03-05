import 'package:flutter/material.dart';
import 'package:schedule_mpt/constants_images/theme.dart';

class NotHaveReplacementWidget extends StatelessWidget {
  const NotHaveReplacementWidget({super.key});

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
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xff282720)
            : const Color(0xffEAE9E5),
      ),
      child: const CustomText(
        title: 'На этот день замен нет',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
    );
  }
}
