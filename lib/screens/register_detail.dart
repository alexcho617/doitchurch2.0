import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            TextWidget('이름', '실명을 입력하세요'),
            TextWidget('휴대폰 번호', '"' "_" '"구분없이 입력'),
          ]),
        ),
      ),
    );
  }
}

Widget TextWidget(String title, String hint) {
  return Column(
    children: [
      Text(title),
      TextField(
        decoration: InputDecoration(hintText: hint),
      )
    ],
  );
}
