import 'package:do_it_church/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(RegisterView());
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
