import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('가입코드 입력하기'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 56,
            ),
            Text('두잇처치 가입코드 입력'),
            TextField(
              decoration: InputDecoration(
                labelText: '코드입력하기',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
