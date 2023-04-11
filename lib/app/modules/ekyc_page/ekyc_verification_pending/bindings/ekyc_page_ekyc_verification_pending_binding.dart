import 'package:get/get.dart';

import '../controllers/ekyc_page_ekyc_verification_pending_controller.dart';

class EkycPageEkycVerificationPendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPageEkycVerificationPendingController>(
      () => EkycPageEkycVerificationPendingController(),
    );
  }
}
