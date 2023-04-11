import 'package:get/get.dart';

import '../controllers/account_profile_page_location_details_controller.dart';

class AccountProfilePageLocationDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageLocationDetailsController>(
      () => AccountProfilePageLocationDetailsController(),
    );
  }
}
