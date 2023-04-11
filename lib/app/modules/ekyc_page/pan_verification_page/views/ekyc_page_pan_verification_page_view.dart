import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/ekyc_page/image_upload_widget.dart';
import 'package:kamao/app/modules/ekyc_page/widgets/title_subtitle_header.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../controllers/ekyc_page_pan_verification_page_controller.dart';

class EkycPagePanVerificationPageView
    extends GetView<EkycPagePanVerificationPageController> {
  const EkycPagePanVerificationPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "My Profile",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleSubtitleHeader(
              title: "PAN Card Verification",
              subtitle: "Upload Front side of your PAN card",
            ),
            const SizedBox(
              height: 36,
            ),
            ImageUploadWidget(
              file: controller.panImage,
              image: "pan_verification",
              takePhotoTitle: "Upload PAN Card",
              pickImageTap: (image) {
                controller.panImage.value = image;
                Get.back();
              },
              takePhotoTap: (image) {
                controller.panImage.value = image;
              },
            ),
          ],
        ),
      ),
      bottomSheet: Obx(
        () => BottomSheetButton(
          isEnabled: controller.panImage.value != null &&
              controller.panImage.value != null,
          text: "Verify",
          onTap: () {
            Get.toNamed(Routes.EKYC_PAGE_EKYC_DETAILS_VERIFICATION);
          },
        ),
      ),
    );
  }
}
