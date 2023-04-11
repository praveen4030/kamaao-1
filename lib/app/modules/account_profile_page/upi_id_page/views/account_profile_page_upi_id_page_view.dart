import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/details_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../../../../components/buttons/dotted_add_button.dart';
import '../controllers/account_profile_page_upi_id_page_controller.dart';

class AccountProfilePageUpiIdPageView
    extends GetView<AccountProfilePageUpiIdPageController> {
  const AccountProfilePageUpiIdPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "UPI ID"),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return DetailsTile(
                    detailsTileModel: controller.upiIdsList[index],
                  );
                },
                childCount: controller.upiIdsList.length,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            sliver: SliverToBoxAdapter(
              child: DottedAddButton(
                onTap: () {
                  Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_ADD_UPI_PAGE);
                },
                text: "Add UPI ID",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
