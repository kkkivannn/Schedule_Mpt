import 'package:flutter/material.dart';
import 'package:schedule_mpt/constants_images/theme.dart';

class SpecialitiesCard extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const SpecialitiesCard({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
      child: Material(
        color: const Color(0xff464D70),
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () => onTap(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: CustomText(
                title: title,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
