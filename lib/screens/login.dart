import 'package:do_it_church/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final phoneKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 114,
            ),
            Image.asset(
              'images/logo.png',
              height: 111,
            ),
            SizedBox(
              height: 75,
            ),
            Form(
              key: phoneKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48.0, vertical: 0),
                    child: CustomTextField(phoneController, "휴대폰 번호", 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48.0, vertical: 0),
                    child: RoundButtonColorBackground(() {}, "로그인", 15),
                  ),
                  Container(
                    width: 300,
                    child: Divider(
                      height: 15,
                      thickness: 1,
                      indent: 38,
                      endIndent: 29,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 129,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("두잇처치가 처음이신가요?"),
                      TextButton(
                          onPressed: () {
                            Get.to(RegisterView());
                          },
                          child: Text("회원가입")),
                      SizedBox(
                        width: 98,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("부서관리자이신가요?"),
                      TextButton(onPressed: () {}, child: Text("등록하기")),
                      SizedBox(
                        width: 98,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
