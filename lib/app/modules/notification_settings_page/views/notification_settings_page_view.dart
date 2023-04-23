import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/notification_settings_page_controller.dart';

class NotificationSettingsPageView
    extends GetView<NotificationSettingsPageController> {
  const NotificationSettingsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "Settings",
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Enable Notification",
                    style: CustomTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Kolors.secondarycolor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "We’ll let you know when there are alerts.",
                    style: CustomTextStyle(
                      fontWeight: FontWeight.w500,
                      color: Kolors.tertiarycolor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 38,
            ),
            Obx(
              () => CupertinoSwitch(
                activeColor: Kolors.checkBoxColor,
                value: controller.isEnabled.value,
                onChanged: (value) {
                  controller.isEnabled.value = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
