import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/text_field_widget.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';

import '../controllers/account_profile_page_add_upi_page_controller.dart';

class AccountProfilePageAddUpiPageView
    extends GetView<AccountProfilePageAddUpiPageController> {
  const AccountProfilePageAddUpiPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Add UPI ID"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            TextFieldWidget(
              hint: "Enter UPI ID",
              tec: controller.upiIdTEC,
              onChanged: (value) {
                controller.upiId.value = value;
              },
            ),
          ],
        ),
      ),
      bottomSheet: Obx(
        () => BottomSheetButton(
          isEnabled: controller.upiId.value.isNotEmpty,
          text: "Verify",
          onTap: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
