import 'package:get/get.dart';

import '../controllers/account_profile_page_transfer_to_bank_page_controller.dart';

class AccountProfilePageTransferToBankPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageTransferToBankPageController>(
      () => AccountProfilePageTransferToBankPageController(),
    );
  }
}
