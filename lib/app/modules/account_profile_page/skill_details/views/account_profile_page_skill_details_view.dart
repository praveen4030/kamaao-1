import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/image_tile_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/header_widget.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../controllers/account_profile_page_skill_details_controller.dart';

class AccountProfilePageSkillDetailsView
    extends GetView<AccountProfilePageSkillDetailsController> {
  const AccountProfilePageSkillDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Skills"),
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
                    const HeaderWidget(
                      text: "Which of these Skills do you have ?",
                      image: "assets/images/Rectangle2.png",
                    ),
                    const SizedBox(height: 31),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.skillsList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.itemSelected(index);
                            },
                            child: ImageTileButton(
                              imageTileModel: controller.skillsList[index],
                              isSelected:
                                  controller.itemSelected.value == index,
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
          isEnabled: controller.itemSelected.value != -1,
          text: "Save",
          onTap: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
