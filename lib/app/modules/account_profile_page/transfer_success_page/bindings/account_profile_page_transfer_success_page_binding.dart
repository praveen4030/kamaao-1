import 'package:get/get.dart';

import '../controllers/account_profile_page_transfer_success_page_controller.dart';

class AccountProfilePageTransferSuccessPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageTransferSuccessPageController>(
      () => AccountProfilePageTransferSuccessPageController(),
    );
  }
}
