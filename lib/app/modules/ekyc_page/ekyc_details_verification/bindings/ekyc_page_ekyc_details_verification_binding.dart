import 'package:get/get.dart';

import '../controllers/ekyc_page_ekyc_details_verification_controller.dart';

class EkycPageEkycDetailsVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPageEkycDetailsVerificationController>(
      () => EkycPageEkycDetailsVerificationController(),
    );
  }
}
