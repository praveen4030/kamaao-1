import 'package:get/get.dart';

import '../controllers/account_profile_page_document_details_controller.dart';

class AccountProfilePageDocumentDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProfilePageDocumentDetailsController>(
      () => AccountProfilePageDocumentDetailsController(),
    );
  }
}
