import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/account_profile_page/wallet_page/views/transaction_tile.dart';
import 'package:kamao/app/modules/account_profile_page/wallet_page/views/wallet_header.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/account_profile_page_wallet_page_controller.dart';

class AccountProfilePageWalletPageView
    extends GetView<AccountProfilePageWalletPageController> {
  const AccountProfilePageWalletPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Wallet"),
      body: ColoredBox(
        color: Kolors.backgroundSecondary,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: WalletHeader(),
            ),
            SliverToBoxAdapter(
              child: infoTile(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return WalletTransactionTile(
                    transactionModel: controller.transactionsList[index],
                  );
                },
                childCount: controller.transactionsList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoTile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Last transactions",
              style: CustomTextStyle(
                color: Kolors.secondarycolor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            "See all",
            style: CustomTextStyle(
              color: Kolors.checkBoxColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
