import 'package:do_it_church/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData BasicTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: PrimaryColor,
  iconTheme: IconThemeData(color: PrimaryColor),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: PrimaryColor),
      primary: PrimaryColor,
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Color(0xFF687AB5),
    ),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: PrimaryColor),
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyText2: TextStyle(
      fontFamily: 'Rubik',
      fontSize: 16.sp,
      letterSpacing: 1,
      color: PrimaryColor,
    ),
  ),
);
