import 'package:get/get.dart';

import '../controllers/ekyc_page_pan_verification_page_controller.dart';

class EkycPagePanVerificationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPagePanVerificationPageController>(
      () => EkycPagePanVerificationPageController(),
    );
  }
}
