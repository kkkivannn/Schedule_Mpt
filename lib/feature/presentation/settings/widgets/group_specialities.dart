import 'package:flutter/material.dart';
import 'package:schedule_mpt/constants_images/theme.dart';

class SettingCardWidget extends StatelessWidget {
  final String title;
  final Function() onTap;
  const SettingCardWidget(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 3,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? const Color(0xff282720)
              : const Color(0xffEAE9E5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              title: title,
              fontSize: 15,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey[500],
            )
          ],
        ),
      ),
    );
  }
}
