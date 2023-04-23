import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';

class JobDetailsPageController extends GetxController
    with GetTickerProviderStateMixin {
  late JobModel jobModel;
  late TabController tabController;
  @override
  void onInit() {
    super.onInit();
    jobModel = Get.arguments;
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
