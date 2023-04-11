import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/text_field_widget.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';

import '../controllers/account_profile_page_edit_profile_controller.dart';

class AccountProfilePageEditProfileView
    extends GetView<AccountProfilePageEditProfileController> {
  const AccountProfilePageEditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Profile"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            imageWidget(),
            TextFieldWidget(
              hint: "Full Name",
              tec: controller.nameTEC,
              onChanged: (value) {
                controller.name.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Gender",
              isEnabled: false,
              isDisabledBox: true,
              tec: controller.genderTEC,
              onChanged: (value) {
                controller.gender.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Age",
              isEnabled: false,
              isDisabledBox: true,
              tec: controller.ageTEC,
              onChanged: (value) {
                controller.age.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Mobile Number",
              isEnabled: false,
              isDisabledBox: true,
              tec: controller.mobileNumberTEC,
              onChanged: (value) {
                controller.mobileNumber.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Alternate Mobile Number",
              tec: controller.alternateMobileNumberTEC,
              onChanged: (value) {
                controller.alternateMobileNumber.value = value;
              },
            ),
            const SizedBox(height: 16),
            TextFieldWidget(
              hint: "Email",
              tec: controller.emailTEC,
              onChanged: (value) {
                controller.email.value = value;
              },
            ),
          ],
        ),
      ),
      bottomSheet: Obx(
        () => BottomSheetButton(
          isEnabled: controller.name.value.isNotEmpty &&
              controller.gender.value.isNotEmpty &&
              controller.age.value.isNotEmpty &&
              controller.email.value.isNotEmpty &&
              controller.mobileNumber.value.isNotEmpty,
          text: "Save",
          onTap: () {
            Get.back();
          },
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 48),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              "assets/images/png/icons/edit.png",
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
