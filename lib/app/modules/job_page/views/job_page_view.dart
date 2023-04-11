import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/job_page_controller.dart';

class JobPageView extends GetView<JobPageController> {
  const JobPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JobPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'JobPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
