import 'package:do_it_church/constants/colors.dart';
import 'package:do_it_church/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterDetailView extends StatelessWidget {
  const RegisterDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? selectedRadio = -1;
    String? selectedGender = 'Unknown';
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
              Row(
                children: [
                  Container(
                    width: 200.w,
                    child: TextFieldWidget('인증번호', '인증번호 입력'),
                  ),
                  Container(
                    width: 95.w,
                    child: RoundButtonWhiteBackground(
                        _startPhoneAuth, '인증번호 전송', 11.0.sp),
                  )
                ],
              ),
              TextFieldWidget('생년월일', '일/월/년도'),
              Text('성별'),
              RadioWidget(selectedRadio, selectedGender, ['남자', '여자']),
              Text('약관동의'),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: LightTextColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(2.0),
                  ),
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundButtonWhiteBackground(_startLogin, '두잇처치 시작하기', 18.0.sp),
                ],
              )
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

//radio widget
Widget RadioWidget(
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
