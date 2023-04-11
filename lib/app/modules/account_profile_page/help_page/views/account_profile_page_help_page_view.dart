import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/account_profile_page/help_page/views/faq_tile.dart';

import '../controllers/account_profile_page_help_page_controller.dart';

class AccountProfilePageHelpPageView
    extends GetView<AccountProfilePageHelpPageController> {
  const AccountProfilePageHelpPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Help"),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        itemCount: controller.faqList.length,
        itemBuilder: (context, index) {
          return FaqTile(
            faqTileModel: controller.faqList[index],
          );
        },
      ),
    );
  }
}
