import 'package:do_it_church/constants/colors.dart';
import 'package:flutter/material.dart';

ElevatedButton RoundButtonWhiteBackground(
    VoidCallback callback, String buttonTitle, double fontSize,
    
    ) {
  return ElevatedButton(
    onPressed: callback,
    child: Text(
      buttonTitle,
      style: TextStyle(color: PrimaryColor,fontSize: fontSize),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      side: MaterialStateProperty.all(BorderSide(
        color: Color(0xFF89A1F8),
        width: 2.0,
      )),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
    ),
  );
}

ElevatedButton RoundButtonColorBackground(
    VoidCallback callback, String buttonTitle) {
  return ElevatedButton(
    onPressed: callback,
    child: Text(
      buttonTitle,
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(PrimaryColor),
      side: MaterialStateProperty.all(
        BorderSide(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
    ),
  );
}
