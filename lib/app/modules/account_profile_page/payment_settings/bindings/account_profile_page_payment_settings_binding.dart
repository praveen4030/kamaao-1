import 'package:get/get.dart';

import '../controllers/account_profile_page_payment_settings_controller.dart';

class AccountProfilePagePaymentSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePagePaymentSettingsController>(
      () => AccountProfilePagePaymentSettingsController(),
    );
  }
}
