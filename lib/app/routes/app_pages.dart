import 'package:get/get.dart';

import '../middleware/auth_middleware.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/guide/bindings/guide_binding.dart';
import '../modules/guide/views/guide_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/';

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
              middlewares: [
                EnsureAuthMiddleware(),
              ],
              name: _Paths.LANDING,
              page: () => LandingView(),
              binding: LandingBinding(),
              children: [
                GetPage(
                  name: _Paths.HOME,
                  page: () => HomeView(),
                  binding: HomeBinding(),
                ),
                GetPage(
                  name: _Paths.CHAT,
                  page: () => ChatView(),
                  binding: ChatBinding(),
                ),
                GetPage(
                  name: _Paths.GUIDE,
                  page: () => GuideView(),
                  binding: GuideBinding(),
                ),
              ]),
          GetPage(
            name: _Paths.LOGIN,
            page: () => LoginView(),
            binding: LoginBinding(),
          ),
          GetPage(
            name: _Paths.REGISTER,
            page: () => RegisterView(),
            binding: RegisterBinding(),
          ),
        ]),
  ];
}
