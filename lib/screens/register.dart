import 'package:do_it_church/widgets/widget.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  final List<String> role = ['교역자', '교사', '학부모'];
  int isSelected = 0;
  String temp ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '가입코드 입력하기',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        elevation: 0,
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
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(22.5)),
                    //TODO:
                    // borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintText: '코드입력하기',
                ),
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
              
            ],
          ),
        ),
      ),
    );
  }
}
