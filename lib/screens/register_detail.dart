import 'package:do_it_church/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class RegisterDetailView extends StatelessWidget {
  const RegisterDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            TextInput('이름', '실명을 입력하세요'),
            TextInput('휴대폰 번호', '"' "_" '"구분없이 입력'),
          ]),
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {},
          child: Text('두잇처치 시작하기'),
          style: kRoundButtonStyle,
        )
      ],
    );
  }
}

Widget TextInput(String title, String hint) {
  return Column(
    children: [
      Text(title),
      TextField(
        decoration: InputDecoration(hintText: hint),
      )
    ],
  );
}
