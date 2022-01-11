import 'package:flutter/material.dart';

//radio widget
Widget RadioWidget(int? isSelected, var controllerValue, List<String> choice, TextStyle textStyle) {
  return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for(int i = 0; i < choice.length ; i++)
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
                    Text(choice[i], style: textStyle,),
                  ],
                ),
              ],
            );
          });
} 