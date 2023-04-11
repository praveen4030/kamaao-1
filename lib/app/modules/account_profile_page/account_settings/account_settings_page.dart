import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/account_settings/account_settings_tile.dart';
import 'package:kamao/app/modules/account_profile_page/controllers/account_profile_page_controller.dart';

class AccountSettingsPage extends GetView<AccountProfilePageController> {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: controller.accountSettingList.length,
      itemBuilder: (context, index) {
        return AccountSettingsTile(
          accountSettingsModel: controller.accountSettingList[index],
        );
      },
    );
  }
}
