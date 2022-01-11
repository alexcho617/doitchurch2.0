import 'package:do_it_church/constants/themes.dart';
import 'package:do_it_church/screens/register_detail.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: BasicTheme,
        title: 'DoItChurch Navigation',
        // home: InitializerWidget(),
        home: RegisterDetailView(),
      ),
    ),
  );
}

// class InitializerWidget extends StatefulWidget {
//   const InitializerWidget({Key? key}) : super(key: key);

//   @override
//   _InitializerWidgetState createState() => _InitializerWidgetState();
// }

// class _InitializerWidgetState extends State<InitializerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     FirebaseAuth _auth = FirebaseAuth.instance;
//     final user = _auth.currentUser;
//     if (user != null) {
//       User loggedInUser = user;
//       //1
//       print(
//           'AUTO LOG IN SUCCESS(main.dart): Signed in As:${loggedInUser.phoneNumber}');
//       //2
//       return LandingRoute();
//       // return HomeRoute();
//     } else {
//       return LoginRoute();
//     }
//   }
// }
