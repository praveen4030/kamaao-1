import 'package:get/get.dart';

import '../controllers/refer_projects_page_controller.dart';

class ReferProjectsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferProjectsPageController>(
      () => ReferProjectsPageController(),
    );
  }
}
