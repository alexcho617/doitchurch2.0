import 'package:flutter/material.dart';

TextField textField(controller, hint) {
return TextField(
  controller: controller,
  decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
    fillColor: Color(0xFFF2F4F6),
    filled: true,
    labelText: hint,
    //labelStyle: TextStyle()
  ),
);


}