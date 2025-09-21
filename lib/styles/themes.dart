import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keep_note/styles/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: GoogleFonts.nunitoTextTheme(),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundColor,
        titleTextStyle: GoogleFonts.nunito(),
      ),
      cardTheme: const CardTheme(color: Colors.white));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    // scaffoldBackgroundColor: AppColors.iceBlue,
    textTheme: GoogleFonts.nunitoTextTheme(),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.nunito(),
    ),
  );
}
