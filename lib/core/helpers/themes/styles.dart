import 'package:flutter/material.dart';

class Styles {
  static dynamic themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
        scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white);
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
  );
}
