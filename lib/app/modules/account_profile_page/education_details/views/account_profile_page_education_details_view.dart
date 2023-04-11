import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/select_tile_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/header_widget.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/utils/image_path.dart';

import '../controllers/account_profile_page_education_details_controller.dart';

class AccountProfilePageEducationDetailsView
    extends GetView<AccountProfilePageEducationDetailsController> {
  const AccountProfilePageEducationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Education Details"),
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 20, 22.81, 30),
                child: Column(
                  children: [
                    HeaderWidget(
                      text: "What is your maximum\neducation?",
                      image: ImagePath.education,
                    ),
                    const SizedBox(height: 31),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.educationList.length,
                      itemBuilder: (context, index) {
                        final language = controller.educationList[index];
                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.educationSelected(language);
                            },
                            child: SelectTileButton(
                              text: language,
                              isSelected: controller.educationSelected.value ==
                                  language,
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
          isEnabled: controller.educationSelected.value.isNotEmpty,
          text: "Save",
          onTap: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
