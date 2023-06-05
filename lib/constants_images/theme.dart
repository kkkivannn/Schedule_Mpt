import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText({
    super.key,
    required this.fontSize,
    this.color,
    required this.title,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}



class MyThemes {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
  );

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );
}
