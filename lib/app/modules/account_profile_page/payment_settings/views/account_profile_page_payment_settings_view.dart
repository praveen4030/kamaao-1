import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/header_widget.dart';
import 'package:kamao/app/modules/account_profile_page/payment_settings/views/payment_setting_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

import '../controllers/account_profile_page_payment_settings_controller.dart';

class AccountProfilePagePaymentSettingsView
    extends GetView<AccountProfilePagePaymentSettingsController> {
  const AccountProfilePagePaymentSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Payment Settings"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              HeaderWidget(
                text: "Check your wallet and\nbank account details",
                image: ImagePath.paysetting,
              ),
              const SizedBox(height: 24),
              PaymentSettingTile(
                text: "Wallet",
                icon: ImagePath.wallet,
                onTap: () {
                  Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_WALLET_PAGE);
                },
              ),
              PaymentSettingTile(
                text: "Bank Account",
                icon: ImagePath.payment,
                onTap: () {
                  Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_BANK_ACCOUNT_PAGE);
                },
              ),
              PaymentSettingTile(
                text: "Upi ID",
                icon: ImagePath.payment,
                onTap: () {
                  Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_UPI_ID_PAGE);
                },
              ),
              const SizedBox(height: 80)
            ],
          ),
        ),
      ),
    );
  }
}
