import 'package:do_it_church/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterDetailView extends StatelessWidget {
  const RegisterDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldWidget('이름', '실명을 입력하세요'),
              Row(
                children: [
                  Container(
                    width: 200.w,
                    child: TextFieldWidget('휴대폰 번호', '"' "_" '"구분없이 입력'),
                  ),
                  Container(
                    width: 95.w,
                    child: RoundButtonWhiteBackground(
                        _startPhoneAuth, '인증번호 전송', 11.0.sp),
                  )
                ],
              ),
              TextFieldWidget('인증번호', '인증번호 입력'),
              TextFieldWidget('생년월일', '일/월/년도'),
              RoundButtonWhiteBackground(_startLogin, '두잇처치 시작하기', 18.0.sp)
            ],
          ),
        ),
      ),
    );
  }

  void _startLogin() {
    print('Login Flow');
  }

  void _startPhoneAuth() {
    print('Phone Auth');
  }
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
