import 'package:flutter/material.dart';
import 'package:riverpod_todo/constants/color_const.dart';

ThemeData lightTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ConstColors.greenColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: const TextStyle(
      color: Colors.black,
      fontFamily: 'P',
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      color: Colors.black.withOpacity(0.7),
      fontFamily: 'P',
      fontSize: 13,
    ),
    displayMedium: const TextStyle(
      color: ConstColors.greenColor,
      fontFamily: 'P',
      fontSize: 13,
    ),
    labelMedium: const TextStyle(
      color: Colors.white,
      fontFamily: 'P',
      fontSize: 14,
    ),
  ),
  colorScheme: const ColorScheme.light(),
);
