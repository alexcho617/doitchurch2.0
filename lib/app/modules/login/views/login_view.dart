import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../../../../services/auth_service.dart';
import '../../../routes/app_pages.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Login"),
        onPressed: () {
          AuthService.to.login();
          final thenTo = Get.rootDelegate.currentConfiguration!.currentPage!
              .parameters?['then'];
          Get.rootDelegate.offNamed(thenTo ?? Routes.LANDING);
        },
      )),
    );
  }
}
