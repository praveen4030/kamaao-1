import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/account_profile_page/transfer_to_bank_page/views/choose_bank_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/account_profile_page_transfer_to_bank_page_controller.dart';
import 'wallet_balance_header.dart';

class AccountProfilePageTransferToBankPageView
    extends GetView<AccountProfilePageTransferToBankPageController> {
  const AccountProfilePageTransferToBankPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Transfer to Bank"),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: headerWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ChooseBankTile(
                  bankModel: controller.banksList[index],
                  selectedIndex: controller.bankSelectedIndex,
                  index: index,
                ),
                childCount: controller.banksList.length,
              ),
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: "Proceed",
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_TRANSFER_SUCCESS_PAGE);
        },
      ),
    );
  }

  Widget headerWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WalletBalanceHeader(),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Send money from wallet to bank",
            style: CustomTextStyle(
              textSize: 20,
              textWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "No direct or hidden charges. Send money from your wallet to bank for free.",
            style: CustomTextStyle(
              textColor: Kolors.tertiaryTextColor,
              textSize: 16,
              textWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Choose bank",
            style: CustomTextStyle(
              textSize: 16,
              textWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
