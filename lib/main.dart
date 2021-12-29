import 'package:do_it_church/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'services/auth_service.dart';

void main() async {
  runApp(GetMaterialApp.router(
    title: "Do it church",
    initialBinding: BindingsBuilder(() {
      Get.put(AuthService());
    }),
    getPages: AppPages.routes,
  ));
}
