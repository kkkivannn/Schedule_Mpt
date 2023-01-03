import 'package:flutter/material.dart';

class GroupAndSpecialitiesWidget extends StatelessWidget {
  final String title;
  final String groupOrSpecialities;
  final Function() onTap;
  const GroupAndSpecialitiesWidget(
      {super.key, required this.title, required this.groupOrSpecialities, required this.onTap});

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
          color: const Color(0xffEAE9E5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
            )
          ],
        ),
      ),
    );
  }
}
