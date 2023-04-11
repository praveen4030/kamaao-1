import 'package:get/get.dart';

import '../controllers/account_profile_page_add_upi_page_controller.dart';

class AccountProfilePageAddUpiPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageAddUpiPageController>(
      () => AccountProfilePageAddUpiPageController(),
    );
  }
}
