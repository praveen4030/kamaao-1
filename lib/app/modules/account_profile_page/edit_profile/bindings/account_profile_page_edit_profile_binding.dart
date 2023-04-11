import 'package:get/get.dart';

import '../controllers/account_profile_page_edit_profile_controller.dart';

class AccountProfilePageEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageEditProfileController>(
      () => AccountProfilePageEditProfileController(),
    );
  }
}
