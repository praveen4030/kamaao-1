import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/image_tile_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/header_widget.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../controllers/account_profile_page_assets_details_controller.dart';

class AccountProfilePageAssetsDetailsView
    extends GetView<AccountProfilePageAssetsDetailsController> {
  const AccountProfilePageAssetsDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "My Assets"),
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
                      text: "Which of these things\ndo you own?",
                      image: "assets/images/scooter.png",
                    ),
                    const SizedBox(height: 31),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.assetsList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.assetsList[index].isSelected.toggle();
                            },
                            child: ImageTileButton(
                              imageTileModel: controller.assetsList[index],
                              isSelected:
                                  controller.assetsList[index].isSelected.value,
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
          isEnabled: isAnySelected(),
          text: "Save",
          onTap: () {
            Get.back();
          },
        ),
      ),
    );
  }

  bool isAnySelected() {
    return controller.assetsList.any((element) => element.isSelected.value);
  }
}
