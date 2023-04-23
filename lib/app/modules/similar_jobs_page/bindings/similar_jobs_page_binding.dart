import 'package:get/get.dart';

import '../controllers/similar_jobs_page_controller.dart';

class SimilarJobsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SimilarJobsPageController>(
      () => SimilarJobsPageController(),
    );
  }
}
