import 'package:get/get.dart';

import '../controllers/project_page_controller.dart';

class ProjectPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectPageController>(
      () => ProjectPageController(),
    );
  }
}
