import 'package:get/get.dart';

import '../controllers/my_jobs_page_controller.dart';

class MyJobsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyJobsPageController>(
      () => MyJobsPageController(),
    );
  }
}
