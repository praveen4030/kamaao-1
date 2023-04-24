import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/learn_page_controller.dart';

class LearnPageView extends GetView<LearnPageController> {
  const LearnPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn'),
        centerTitle: true,
      ),
      body: const SizedBox(),
    );
  }
}
