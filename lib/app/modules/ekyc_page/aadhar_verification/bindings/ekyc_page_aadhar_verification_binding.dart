import 'package:get/get.dart';

import '../controllers/ekyc_page_aadhar_verification_controller.dart';

class EkycPageAadharVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPageAadharVerificationController>(
      () => EkycPageAadharVerificationController(),
    );
  }
}
