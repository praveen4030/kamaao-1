import 'package:get/get.dart';

import '../controllers/ekyc_page_face_verification_controller.dart';

class EkycPageFaceVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPageFaceVerificationController>(
      () => EkycPageFaceVerificationController(),
    );
  }
}
