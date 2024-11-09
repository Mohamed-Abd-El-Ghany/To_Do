import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color orangeClr = Color(0xCFFF8746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    datePickerTheme: const DatePickerThemeData(
      backgroundColor: Colors.white,
      todayBackgroundColor: WidgetStatePropertyAll(primaryClr),
      cancelButtonStyle: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primaryClr)),
      confirmButtonStyle: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primaryClr)),
    ),
    timePickerTheme: const TimePickerThemeData(
      backgroundColor: Colors.white,
      dialHandColor: primaryClr,
      cancelButtonStyle: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primaryClr)),
      confirmButtonStyle: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primaryClr)),
    ),
    primaryColor: primaryClr,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: darkGreyClr,
    appBarTheme: const AppBarTheme(backgroundColor: darkGreyClr),
    brightness: Brightness.dark,
  );
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextStyle get bodyStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextStyle get body2Style {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.grey[200] : Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}
