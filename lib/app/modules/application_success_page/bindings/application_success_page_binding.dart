import 'package:get/get.dart';

import '../controllers/application_success_page_controller.dart';

class ApplicationSuccessPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationSuccessPageController>(
      () => ApplicationSuccessPageController(),
    );
  }
}
