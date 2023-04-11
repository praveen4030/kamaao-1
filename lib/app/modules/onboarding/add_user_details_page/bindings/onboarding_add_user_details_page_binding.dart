import 'package:get/get.dart';

import '../controllers/onboarding_add_user_details_page_controller.dart';

class OnboardingAddUserDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingAddUserDetailsPageController>(
      () => OnboardingAddUserDetailsPageController(),
    );
  }
}
