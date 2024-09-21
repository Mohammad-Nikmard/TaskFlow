import 'package:flutter/material.dart';
import 'package:riverpod_todo/constants/color_const.dart';

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      color: Colors.black,
      fontFamily: 'P',
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      color: Colors.black,
      fontFamily: 'P',
      fontSize: 13,
    ),
    displayMedium: TextStyle(
      color: ConstColors.greenColor,
      fontFamily: 'P',
      fontSize: 13,
    ),
    labelMedium: TextStyle(
      color: Colors.white,
      fontFamily: 'P',
      fontSize: 14,
    ),
  ),
  colorScheme: const ColorScheme.light(),
);
