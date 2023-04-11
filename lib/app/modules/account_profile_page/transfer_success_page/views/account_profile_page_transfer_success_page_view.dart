import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/account_profile_page/transfer_success_page/views/transaction_tile.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

import '../controllers/account_profile_page_transfer_success_page_controller.dart';

class AccountProfilePageTransferSuccessPageView
    extends GetView<AccountProfilePageTransferSuccessPageController> {
  const AccountProfilePageTransferSuccessPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: ""),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Image.asset(
                ImagePath.success,
                height: 60,
              ),
              const SizedBox(height: 40),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "₹500",
                      style: CustomTextStyle(
                        textSize: 24,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Transfer to bank",
                      style: CustomTextStyle(
                        textColor: Kolors.secondaryTextColor,
                        textSize: 18,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Your money successfully transfer.",
                      style: CustomTextStyle(
                        textColor: Kolors.tertiaryTextColor,
                        textSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SuccessTransactionTile(
                    amount: 550,
                    image: ImagePath.kamaao,
                    title: "Kamaao Wallet",
                    description: "Current Balance ₹1500",
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Credited To",
                      style: CustomTextStyle(
                        textSize: 16,
                        textWeight: Constants.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SuccessTransactionTile(
                    image: ImagePath.imgSbi,
                    title: "**** **** **** 5458",
                    description: "UTR: 258425892586",
                  ),
                  const SizedBox(height: 18),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Transaction ID",
                      style: CustomTextStyle(
                        textSize: 16,
                        textWeight: Constants.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  transactionId(),
                  const SizedBox(height: 60)
                ],
              )
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: "Add More Money",
        onTap: () {
          Get.back();
        },
      ),
    );
  }

  Widget transactionId() {
    return Container(
      decoration: BoxDecoration(
        color: Kolors.integrfaceInputBg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              "225896315458",
              style: CustomTextStyle(
                textColor: Kolors.secondaryTextColor,
                textSize: 16,
                textWeight: FontWeight.w500,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              "Copy",
              style: CustomTextStyle(
                textColor: Kolors.textInfo,
                textSize: 16,
                textWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
