import 'package:get/get.dart';

import '../controllers/account_profile_page_skill_details_controller.dart';

class AccountProfilePageSkillDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageSkillDetailsController>(
      () => AccountProfilePageSkillDetailsController(),
    );
  }
}
