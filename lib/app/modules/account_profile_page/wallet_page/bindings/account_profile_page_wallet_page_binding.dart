import 'package:get/get.dart';

import '../controllers/account_profile_page_wallet_page_controller.dart';

class AccountProfilePageWalletPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageWalletPageController>(
      () => AccountProfilePageWalletPageController(),
    );
  }
}
