import 'package:get/get.dart';

import '../controllers/projects_list_page_controller.dart';

class ProjectsListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectsListPageController>(
      () => ProjectsListPageController(),
    );
  }
}
