import 'package:get/get.dart';

import '../controllers/onboarding_otp_page_controller.dart';

class OnboardingOtpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingOtpPageController>(
      () => OnboardingOtpPageController(),
    );
  }
}
