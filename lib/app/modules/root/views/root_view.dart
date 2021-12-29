import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../services/auth_service.dart';
import '../controllers/root_controller.dart';
import '../../../routes/app_pages.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // '''
      //     body: GetRouterOutlet(
      //      anchorRoute: Routes.LANDING,
      //      initialRoute: AuthService().isLoggedIn.value == true
      //        ? Routes.LANDING
      //        : Routes.LOGIN,
      //     )
      // '''

      body: GetRouterOutlet(
        initialRoute: AuthService().isLoggedIn.value == true
            ? Routes.LANDING
            : Routes.LOGIN,
      ),
    );
  }
}
