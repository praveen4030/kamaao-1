import 'package:get/get.dart';

import '../controllers/job_page_controller.dart';

class JobPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobPageController>(
      () => JobPageController(),
    );
  }
}
