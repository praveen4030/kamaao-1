import 'package:get/get.dart';

import '../controllers/project_details_page_controller.dart';

class ProjectDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectDetailsPageController>(
      () => ProjectDetailsPageController(),
    );
  }
}
