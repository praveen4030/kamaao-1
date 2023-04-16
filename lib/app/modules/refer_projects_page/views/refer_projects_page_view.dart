import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/refer_projects_page_controller.dart';

class ReferProjectsPageView extends GetView<ReferProjectsPageController> {
  const ReferProjectsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReferProjectsPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReferProjectsPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
