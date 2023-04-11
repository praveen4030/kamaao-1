import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/base_page_controller.dart';

class BasePageView extends GetView<BasePageController> {
  const BasePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasePageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BasePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
