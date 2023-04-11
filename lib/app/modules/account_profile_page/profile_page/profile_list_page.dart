import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/controllers/account_profile_page_controller.dart';
import 'package:kamao/app/modules/account_profile_page/profile_page/profile_list_tile.dart';

class ProfileListPage extends GetView<AccountProfilePageController> {
  const ProfileListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.profileList.length,
      padding: const EdgeInsets.symmetric(vertical: 18),
      itemBuilder: (context, index) {
        return ProfileListTile(
          profileTileModel: controller.profileList[index],
        );
      },
    );
  }
}
