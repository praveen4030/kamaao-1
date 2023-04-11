import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/views/add_details_step1_form.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/views/add_details_step2_form.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/views/user_profile_display_view.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/onboarding_add_user_details_page_controller.dart';

class OnboardingAddUserDetailsPageView
    extends GetView<OnboardingAddUserDetailsPageController> {
  const OnboardingAddUserDetailsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.whiteColor,
      appBar: customAppBar(title: "My Profile"),
      bottomSheet: bottomSheet(),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Details",
                  style: CustomTextStyle(
                    textSize: 24,
                    textWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Create Your Kamaao Job Card",
                  style: CustomTextStyle(
                    textSize: 16,
                    textWeight: FontWeight.w500,
                    textColor: Kolors.appTextColor,
                  ),
                ),
                const SizedBox(height: 16),
                const UserProfileDisplayView(),
                Obx(
                  () => controller.isFinalStep.value
                      ? const AddDetailsStep2Form()
                      : const AddDetailsStep1Form(),
                ),
                const SizedBox(height: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      width: MediaQuery.of(Get.context!).size.width,
      height: 80,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 7)
      ]),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Obx(
            () => PrimaryButton(
              onTap: () {
                if (controller.isFinalStep.value) {
                  Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE);
                  return;
                }
                controller.isFinalStep(true);
              },
              isEnabled: controller.isButtonEnabled(),
              title: "Next",
            ),
          ),
        ),
      ),
    );
  }
}
