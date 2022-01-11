import 'package:do_it_church/constants/colors.dart';
import 'package:flutter/material.dart';

//radio widget
Widget RadioWidget(int? isSelected, var controllerValue, List<String> choice,
    TextStyle textStyle) {
  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < choice.length; i++)
          Row(
            children: [
              Radio<int>(
                value: i + 1,
                groupValue: isSelected,
                onChanged: (int? value) {
                  setState(() => isSelected = value);
                  controllerValue = choice[i];
                },
              ),
              Text(
                choice[i],
                style: textStyle,
              ),
            ],
          ),
      ],
    );
  });
}

ElevatedButton RoundButtonWhiteBackground(
  VoidCallback callback,
  String buttonTitle,
  double fontSize,
) {
  return ElevatedButton(
    onPressed: callback,
    child: Text(
      buttonTitle,
      style: TextStyle(color: PrimaryColor, fontSize: fontSize),
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
    VoidCallback callback, String buttonTitle, double fontSize) {
  return ElevatedButton(
    onPressed: callback,
    child: Text(
      buttonTitle,
      style: TextStyle(color: Colors.white, fontSize: fontSize),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(PrimaryColor),
      side: MaterialStateProperty.all(
        BorderSide(
          color: PrimaryColor,
          width: 2.0,
        ),
      ),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
    ),
  );
}

//textfield
TextField CustomTextField(controller, hint, double fontsize) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent , width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      fillColor: Color(0xFFF2F4F6),
      filled: true,
      labelText: hint,
      labelStyle: TextStyle(fontSize: fontsize)
    ),
  );
}


Widget TextFieldWidget(String title, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title),
      TextField(
        decoration: InputDecoration(hintText: hint),
      )
    ],
  );
}

//radio widget
Widget RRadioWidget(
  int? isSelected,
  var controllerValue,
  List<String> choice,
) {
  return StatefulBuilder(builder: (BuildContext context, StateSetter setState) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < choice.length; i++)
          Row(
            children: [
              Radio<int>(
                value: i + 1,
                groupValue: isSelected,
                onChanged: (int? value) {
                  setState(() => isSelected = value);
                  controllerValue = choice[i];
                },
              ),
              Text(
                choice[i],
              ),
            ],
          ),
      ],
    );
  });
}
