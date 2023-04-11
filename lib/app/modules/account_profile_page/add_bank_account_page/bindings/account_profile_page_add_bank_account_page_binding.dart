import 'package:get/get.dart';

import '../controllers/account_profile_page_add_bank_account_page_controller.dart';

class AccountProfilePageAddBankAccountPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageAddBankAccountPageController>(
      () => AccountProfilePageAddBankAccountPageController(),
    );
  }
}
