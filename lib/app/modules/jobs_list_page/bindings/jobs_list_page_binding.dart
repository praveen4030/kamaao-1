import 'package:get/get.dart';

import '../controllers/jobs_list_page_controller.dart';

class JobsListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobsListPageController>(
      () => JobsListPageController(),
    );
  }
}
