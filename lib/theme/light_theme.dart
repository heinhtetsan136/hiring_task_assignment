import 'package:assignment/theme/theme.dart';
import 'package:flutter/material.dart';

class AppLightTheme extends AppStandardTheme {
  @override
  Color get scaffoldFgColor => const Color.fromRGBO(71, 71, 71, 1);

  @override
  Color get selectedColor => const Color.fromRGBO(254, 44, 85, 1);

  @override
  Color get unselectedColor => const Color.fromRGBO(168, 168, 168, 1);

  @override
  Color get cardBgColor => scaffoldFgColor;

  @override
  Color get containerBgColor => selectedColor;

  @override
  Color get containerFgColor => Colors.white;

  @override
  Color get textColor => const Color.fromRGBO(0, 0, 0, 1);

  @override
  ThemeData get ref => ThemeData.light();
}
