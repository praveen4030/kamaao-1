import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/select_tile_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/utils/constants.dart';

import '../controllers/onboarding_select_language_page_controller.dart';

class OnboardingSelectLanguagePageView
    extends GetView<OnboardingSelectLanguagePageController> {
  const OnboardingSelectLanguagePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          !controller.isOnboardingPage ? customAppBar(title: "Language") : null,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    16, controller.isOnboardingPage ? 34 : 20, 22.81, 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Select your Preffered\nApp language",
                          style: CustomTextStyle(
                            textSize: 22,
                            textWeight: Constants.bold,
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/images/Aor3.png",
                          height: 70,
                          width: 66.5,
                        )
                      ],
                    ),
                    const SizedBox(height: 31),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.languagesList.length,
                      itemBuilder: (context, index) {
                        final language = controller.languagesList[index];
                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.languageSelected(language);
                            },
                            child: SelectTileButton(
                              text: language,
                              isSelected:
                                  controller.languageSelected.value == language,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 80)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Obx(
        () => BottomSheetButton(
          isEnabled: controller.languageSelected.value.isNotEmpty,
          text: controller.isOnboardingPage ? "Proceed" : "Save",
          onTap: () {
            if (controller.isOnboardingPage) {
              Get.offNamed(Routes.ONBOARDING_LOGIN_PAGE);
            } else {
              Get.back();
            }
          },
        ),
      ),
    );
  }
}
