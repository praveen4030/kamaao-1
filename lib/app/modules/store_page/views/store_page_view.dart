import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/store_page_controller.dart';

class StorePageView extends GetView<StorePageController> {
  const StorePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StorePageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StorePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
