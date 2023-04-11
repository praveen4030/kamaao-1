import 'package:get/get.dart';

import '../controllers/account_profile_page_upi_id_page_controller.dart';

class AccountProfilePageUpiIdPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageUpiIdPageController>(
      () => AccountProfilePageUpiIdPageController(),
    );
  }
}
