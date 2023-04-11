import 'package:get/get.dart';

import '../controllers/account_profile_page_assets_details_controller.dart';

class AccountProfilePageAssetsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageAssetsDetailsController>(
      () => AccountProfilePageAssetsDetailsController(),
    );
  }
}
