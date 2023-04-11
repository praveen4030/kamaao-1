import 'package:get/get.dart';

import '../controllers/account_profile_page_controller.dart';

class AccountProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageController>(
      () => AccountProfilePageController(),
    );
  }
}
