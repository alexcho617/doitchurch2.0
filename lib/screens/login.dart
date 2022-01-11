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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48.0, vertical: 0),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      fillColor: Colors.grey,
                      labelText: '휴대폰번호',
                      //labelStyle: TextStyle()
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
