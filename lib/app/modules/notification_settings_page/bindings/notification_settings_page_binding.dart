import 'package:get/get.dart';

import '../controllers/notification_settings_page_controller.dart';

class NotificationSettingsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationSettingsPageController>(
      () => NotificationSettingsPageController(),
    );
  }
}
