import 'package:flutter/material.dart';
import 'package:scale_button/scale_button.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color color;
  final Color textColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleButton(
      bound: 0.02,
      onTap: onTap,
      child: Container(
        height: 62,
        margin: const EdgeInsets.symmetric(horizontal: 47.5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Inter",
            fontSize: 25,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
