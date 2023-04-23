import 'package:get/get.dart';

import '../controllers/job_questions_page_controller.dart';

class JobQuestionsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JobQuestionsPageController>(
      () => JobQuestionsPageController(),
    );
  }
}
