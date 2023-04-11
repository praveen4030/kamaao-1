import 'package:get/get.dart';

import '../controllers/learn_page_controller.dart';

class LearnPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LearnPageController>(
      () => LearnPageController(),
    );
  }
}
