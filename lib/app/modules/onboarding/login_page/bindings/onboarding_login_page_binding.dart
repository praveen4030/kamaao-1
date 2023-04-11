import 'package:get/get.dart';

import '../controllers/onboarding_login_page_controller.dart';

class OnboardingLoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingLoginPageController>(
      () => OnboardingLoginPageController(),
    );
  }
}
