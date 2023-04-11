import 'package:get/get.dart';

import '../controllers/account_profile_page_education_details_controller.dart';

class AccountProfilePageEducationDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageEducationDetailsController>(
      () => AccountProfilePageEducationDetailsController(),
    );
  }
}
