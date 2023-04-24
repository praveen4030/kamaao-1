import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/project_page_controller.dart';
import 'project_header.dart';

class ProjectPageView extends GetView<ProjectPageController> {
  const ProjectPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProjectHeader(),
            ColoredBox(
              color: Kolors.backgroundSecondary,
              child: Column(
                children: [
                  ...controller.projectsList.map((e) {
                    return e;
                  }).toList(),
                  Image.asset(
                    "assets/images/png/refer_earn_banner.png",
                    height: 162,
                    width: Get.width,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
