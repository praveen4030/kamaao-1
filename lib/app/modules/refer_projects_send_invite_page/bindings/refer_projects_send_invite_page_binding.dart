import 'package:get/get.dart';

import '../controllers/refer_projects_send_invite_page_controller.dart';

class ReferProjectsSendInvitePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReferProjectsSendInvitePageController>(
      () => ReferProjectsSendInvitePageController(),
    );
  }
}
