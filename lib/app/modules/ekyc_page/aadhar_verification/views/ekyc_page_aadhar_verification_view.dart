import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/bottom_sheet/upload_document_bs.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/ekyc_page/widgets/title_subtitle_header.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../controllers/ekyc_page_aadhar_verification_controller.dart';

class EkycPageAadharVerificationView
    extends GetView<EkycPageAadharVerificationController> {
  const EkycPageAadharVerificationView({Key? key}) : super(key: key);
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
              title: "Aadhar Card Verification",
              subtitle: "Upload Front and back side of your Aadhar card",
            ),
            const SizedBox(
              height: 36,
            ),
            aadharUploadplaceHolder(
              file: controller.aadharFrontImage,
              image: "aadhar_front",
              takePhotoTitle: "Aadhar Card Front side",
              pickImageTap: (image) {
                controller.aadharFrontImage.value = image;
                Get.back();
              },
              takePhotoTap: (image) {
                controller.aadharFrontImage.value = image;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            aadharUploadplaceHolder(
              file: controller.aadharBackImage,
              image: "aadhar_back",
              takePhotoTitle: "Aadhar Card Back side",
              pickImageTap: (image) {
                controller.aadharBackImage.value = image;
                Get.back();
              },
              takePhotoTap: (image) {
                controller.aadharBackImage.value = image;
              },
            ),
          ],
        ),
      ),
      bottomSheet: Obx(
        () => BottomSheetButton(
          isEnabled: controller.aadharBackImage.value != null &&
              controller.aadharFrontImage.value != null,
          text: "Verify",
          onTap: () {
            Get.toNamed(Routes.EKYC_PAGE_EKYC_DETAILS_VERIFICATION);
          },
        ),
      ),
    );
  }

  Widget aadharUploadplaceHolder({
    required String image,
    required Rxn<File> file,
    required Function takePhotoTap,
    required Function pickImageTap,
    required String takePhotoTitle,
  }) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          showCustomBottomSheet(
              child: UploadDocumentBs(
            pickImageTap: (image) {
              pickImageTap(image);
            },
            takePhotoTap: () {
              Get.toNamed(
                Routes.EKYC_PAGE_TAKE_DOCUMENT_PHOTO,
                arguments: {
                  'title': takePhotoTitle,
                  'subtitle':
                      "Make sure lighting is good and letters are clearly visible.",
                },
              )?.then(
                (image) {
                  takePhotoTap(image);
                  Get.back();
                },
              );
            },
          ));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 196,
            child: file.value != null
                ? Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: FileImage(file.value!), fit: BoxFit.cover),
                      border: Border.all(color: Colors.black.withOpacity(0.25)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  )
                : Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Colors.black.withOpacity(0.25),
                          child: Image.asset(
                            "assets/images/png/$image.png",
                            width: Get.width,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.25),
                        ),
                        width: Get.width,
                        child: Center(
                          child: Image.asset(
                            "assets/images/png/upload_icon.png",
                            height: 48,
                            width: 48,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
