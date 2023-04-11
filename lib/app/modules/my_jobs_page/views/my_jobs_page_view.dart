import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_jobs_page_controller.dart';

class MyJobsPageView extends GetView<MyJobsPageController> {
  const MyJobsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyJobsPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyJobsPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
