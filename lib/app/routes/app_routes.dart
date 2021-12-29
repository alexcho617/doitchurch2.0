part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const LANDING = _Paths.LANDING;
  static const HOME = _Paths.LANDING + _Paths.HOME;
  static const CHAT = _Paths.LANDING + _Paths.CHAT;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const GUIDE = _Paths.LANDING + _Paths.GUIDE;

  
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
}

abstract class _Paths {
  _Paths._();
  static const LANDING = '/landing';
  static const HOME = '/home';
  static const CHAT = '/chat';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const GUIDE = '/guide';
}
