import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/image_upload_tile_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/header_widget.dart';

import '../controllers/account_profile_page_document_details_controller.dart';

class AccountProfilePageDocumentDetailsView
    extends GetView<AccountProfilePageDocumentDetailsController> {
  const AccountProfilePageDocumentDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Documents"),
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
                      text: "Which of these documents do you have?",
                      image: "assets/images/doc.png",
                    ),
                    const SizedBox(height: 31),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.documentsList.length,
                      itemBuilder: (context, index) {
                        final document = controller.documentsList[index];
                        return Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.itemSelected(index);
                            },
                            child: ImageUploadTileButton(
                              imageUploadTileModel: document,
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
