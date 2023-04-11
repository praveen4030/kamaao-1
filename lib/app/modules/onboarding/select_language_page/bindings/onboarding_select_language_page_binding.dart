import 'package:get/get.dart';

import '../controllers/onboarding_select_language_page_controller.dart';

class OnboardingSelectLanguagePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingSelectLanguagePageController>(
      () => OnboardingSelectLanguagePageController(),
    );
  }
}
