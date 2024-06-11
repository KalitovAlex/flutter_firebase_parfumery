import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(color: Colors.transparent,surfaceTintColor: Colors.transparent),
  colorScheme: ColorScheme.fromSeed(seedColor:  const Color.fromARGB(255, 117, 164, 245).withOpacity(0.7),brightness: Brightness.light).copyWith(surface: Colors.blue),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.robotoSerif(
      color: Colors.green,
      fontSize: 30,
      fontWeight: FontWeight.w500
    ),
    headlineSmall: GoogleFonts.robotoSerif(
      color: Colors.green,
      fontSize: 16,
      fontWeight: FontWeight.w500
    ),
      headlineMedium: GoogleFonts.roboto(
      color: Colors.green,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
    displayLarge: GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w500
    ),
    displayMedium: GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
    labelLarge: GoogleFonts.roboto(
      color: Colors.grey,
      fontSize: 30,
      fontWeight: FontWeight.w600
    ),
    labelMedium: GoogleFonts.roboto(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.w500
    ),
    titleMedium: GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w500
    ),
    titleLarge: GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w500
    ),
    titleSmall: GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w500
    )
  ),
);