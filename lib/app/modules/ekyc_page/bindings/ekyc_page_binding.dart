import 'package:get/get.dart';

import '../controllers/ekyc_page_controller.dart';

class EkycPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPageController>(
      () => EkycPageController(),
    );
  }
}
