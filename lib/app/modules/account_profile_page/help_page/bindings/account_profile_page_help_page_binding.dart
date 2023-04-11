import 'package:get/get.dart';

import '../controllers/account_profile_page_help_page_controller.dart';

class AccountProfilePageHelpPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageHelpPageController>(
      () => AccountProfilePageHelpPageController(),
    );
  }
}
