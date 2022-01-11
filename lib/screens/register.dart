import 'package:do_it_church/widgets/widget.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  final textcontroller = TextEditingController();
  RegisterView({Key? key}) : super(key: key);
  final List<String> role = ['교역자', '교사', '학부모'];
  int isSelected = 0;
  String temp ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '가입코드 입력하기',
          style: TextStyle(color: Colors.black, fontSize: 24.52),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 56,
              ),
              Text(
                '두잇처치 가입코드 입력',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(
                height: 11,
              ),
              CustomTextField(
                textcontroller,
                '코드입력하기',
                14
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                '역할',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              RadioWidget(isSelected, temp, role, TextStyle(fontSize: 16)),        
              SizedBox(height: 33,),
              SizedBox(
                height: 45,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [Expanded(child: RoundButtonColorBackground((){}, '코드 인증하기', 15))] ),
                
              ),
              SizedBox(height: 42,),
              Divider(thickness: 1, color: Color(0xffB6B6B6),),
              SizedBox(height: 55,),
              Text('알림', style: TextStyle(fontSize: 14),),
              SizedBox(height: 16,),
              Text('● 관리자에게 전달받으신 코드를 복사 → 붙여넣기 해주세요.\n\n● 가입코드를 분실하신 경우, 문의는 해당교회 관리자에게 해주세요.', style: TextStyle(fontSize: 10, color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
