import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guide_controller.dart';

class GuideView extends GetView<GuideController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GuideView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GuideView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
