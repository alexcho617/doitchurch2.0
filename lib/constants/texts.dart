import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



ButtonStyle kRoundButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  side: MaterialStateProperty.all(BorderSide(
    color: Color(0xFF89A1F8),
    width: 2.0,
  )),
  shape: MaterialStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
);
