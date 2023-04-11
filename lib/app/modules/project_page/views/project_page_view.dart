import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/project_page_controller.dart';

class ProjectPageView extends GetView<ProjectPageController> {
  const ProjectPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProjectPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ProjectPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
