import 'package:get/get.dart';

import '../../services/auth_service.dart';
import '../routes/app_pages.dart';

class EnsureAuthMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    // you can do whatever you want here
    // but it's preferable to make this method fast
    // await Future.delayed(Duration(milliseconds: 500));
    print("Line 12");

    if (!AuthService.to.isLoggedInValue) {
      print("LoggedInValue is null");
      final newRoute = Routes.LOGIN_THEN(route.location!);
      return GetNavConfig.fromRoute(newRoute);
    }
    print("Line 18 ");
    return await super.redirectDelegate(route);
  }
}

class EnsureNotAuthedMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if (AuthService.to.isLoggedInValue) {
      //NEVER navigate to auth screen, when user is already authed
      //return null;

      //OR redirect user to another screen
      return GetNavConfig.fromRoute(Routes.HOME);
    }
    return await super.redirectDelegate(route);
  }
}
