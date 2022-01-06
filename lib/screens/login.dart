import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final phoneKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
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
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '휴대폰번호',
              ),
                  ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
