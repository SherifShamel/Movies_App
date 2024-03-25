import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFFFA90A);
  static const Color appBarColor = Color(0xFFFFA90A);
  static ThemeData mainTheme = ThemeData(
    // static const Color appBarColor = const Color(0xFF1D1E1D);
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: appBarColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 20,
        color: primaryColor,
      ),
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontFamily: "Inter",
    )),
    scaffoldBackgroundColor: const Color(0xff131313ff),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1A1A1A),
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.white,
      elevation: 0,
      // selectedLabelStyle: TextStyle(color: primaryColor),
      // unselectedLabelStyle: TextStyle(color: Colors.white),
    ),
  );
}
