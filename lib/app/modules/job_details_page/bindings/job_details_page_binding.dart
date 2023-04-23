import 'package:get/get.dart';

import '../controllers/job_details_page_controller.dart';

class JobDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobDetailsPageController>(
      () => JobDetailsPageController(),
    );
  }
}
