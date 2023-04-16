import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';

class ProjectDetailsPageController extends GetxController
    with GetTickerProviderStateMixin {
  late ProjectModel projectModel;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    projectModel = Get.arguments;
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
