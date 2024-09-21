import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  TextStyle get titleStyle {
    return Theme.of(this).textTheme.headlineLarge!;
  }

  TextStyle get blackBodyStyle {
    return Theme.of(this).textTheme.bodyMedium!;
  }

  TextStyle get greenBodyStyle {
    return Theme.of(this).textTheme.displayMedium!;
  }

  TextStyle get buttonStyle {
    return Theme.of(this).textTheme.labelMedium!;
  }
}
