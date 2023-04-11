import 'package:get/get.dart';

import '../controllers/account_profile_page_bank_account_page_controller.dart';

class AccountProfilePageBankAccountPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageBankAccountPageController>(
      () => AccountProfilePageBankAccountPageController(),
    );
  }
}
