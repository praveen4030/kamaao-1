import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/dotted_add_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/details_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../controllers/account_profile_page_bank_account_page_controller.dart';

class AccountProfilePageBankAccountPageView
    extends GetView<AccountProfilePageBankAccountPageController> {
  const AccountProfilePageBankAccountPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Bank Account"),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return DetailsTile(
                    detailsTileModel: controller.bankAccountsList[index],
                  );
                },
                childCount: controller.bankAccountsList.length,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            sliver: SliverToBoxAdapter(
              child: DottedAddButton(
                onTap: () {
                  Get.toNamed(
                      Routes.ACCOUNT_PROFILE_PAGE_ADD_BANK_ACCOUNT_PAGE);
                },
                text: "Add New Bank Account",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
