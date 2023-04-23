import 'package:get/get.dart';

import '../controllers/application_rejected_page_controller.dart';

class ApplicationRejectedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationRejectedPageController>(
      () => ApplicationRejectedPageController(),
    );
  }
}
