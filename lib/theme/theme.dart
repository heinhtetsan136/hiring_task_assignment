import 'package:flutter/material.dart';

abstract class AppStandardTheme {
  Color get scaffoldFgColor;

  Color get selectedColor;

  Color get unselectedColor;

  Color get containerBgColor;

  Color get cardBgColor;

  Color get containerFgColor;

  Color get textColor => const Color.fromARGB(255, 255, 255, 1);

  ThemeData get ref;

  ThemeData get theme => ref.copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: scaffoldFgColor,
          foregroundColor: containerFgColor,
        ),
        drawerTheme: DrawerThemeData(
            backgroundColor: scaffoldFgColor,
            shape: const RoundedRectangleBorder()),

        // cardTheme: CardTheme(
        //   shape: const RoundedRectangleBorder(),
        //   color: cardBgColor,
        // ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: textColor,
          unselectedItemColor: unselectedColor,
        ),
        textTheme: ref.textTheme.copyWith(
          bodyLarge: TextStyle(color: textColor),
        ),
      );
}
