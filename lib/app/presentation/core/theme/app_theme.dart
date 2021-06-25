import 'package:flutter/material.dart';

ThemeData get theme {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
    backgroundColor: Color(0xFF30363d),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF161b22),
      elevation: 0,
    ),
    scaffoldBackgroundColor: Color(0xFF161b22),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(50, 48)),
        backgroundColor: MaterialStateProperty.all(
          Colors.green[700],
        ),
      ),
    ),
  );
}
