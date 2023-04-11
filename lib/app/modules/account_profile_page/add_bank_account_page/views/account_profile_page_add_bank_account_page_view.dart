import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/text_field_widget.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';

import '../controllers/account_profile_page_add_bank_account_page_controller.dart';

class AccountProfilePageAddBankAccountPageView
    extends GetView<AccountProfilePageAddBankAccountPageController> {
  const AccountProfilePageAddBankAccountPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Add New"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            TextFieldWidget(
              hint: "Account Number",
              tec: controller.accountNumberTEC,
              onChanged: (value) {
                controller.accountNumber.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Account Holder Name",
              tec: controller.accountHolderNameTEC,
              onChanged: (value) {
                controller.accountHolderName.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Branch Name",
              tec: controller.branchNameTEC,
              onChanged: (value) {
                controller.branchName.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "IFSC Code",
              tec: controller.ifscCodeTEC,
              onChanged: (value) {
                controller.ifscCode.value = value;
              },
            ),
          ],
        ),
      ),
      bottomSheet: Obx(
        () => BottomSheetButton(
          isEnabled: controller.accountNumber.value.isNotEmpty &&
              controller.accountHolderName.value.isNotEmpty &&
              controller.branchName.value.isNotEmpty &&
              controller.ifscCode.value.isNotEmpty,
          text: "Save",
          onTap: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
