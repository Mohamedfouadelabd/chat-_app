import 'package:flutter/material.dart';

class MyTheme {
  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff303030);
  static const primary = Color(0xff3598DB);

  static ThemeData primaryTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0, backgroundColor: Colors.transparent, centerTitle: true),
    scaffoldBackgroundColor: white,
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 14,
        color: MyTheme.black,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, color: MyTheme.white),
      titleLarge: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: MyTheme.white),
    ),
  );
}
