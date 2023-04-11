import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_page_controller.dart';

class SplashPageView extends GetView<SplashPageController> {
  const SplashPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.navigate();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Center(
        child: Text(
          'Kamaao',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
