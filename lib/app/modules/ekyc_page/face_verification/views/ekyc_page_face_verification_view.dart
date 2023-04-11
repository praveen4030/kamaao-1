import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/take_photo_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/ekyc_page/widgets/title_subtitle_header.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/ekyc_page_face_verification_controller.dart';

class EkycPageFaceVerificationView
    extends GetView<EkycPageFaceVerificationController> {
  const EkycPageFaceVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: "My Profile",
          actionText: "Skip",
          onTapAction: () {
            Get.toNamed(Routes.EKYC_PAGE_EKYC_VERIFICATION_PENDING);
          }),
      body: Column(
        children: [
          const TitleSubtitleHeader(
            title: "Face Verification",
            subtitle:
                "Please remove spectacles, hat and mask. A clearly visible face will get approved faster",
          ),
          const SizedBox(
            height: 36,
          ),
          SizedBox(
            height: Get.width * 0.7,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Obx(
              () => InkWell(
                onTap: () {},
                child: controller.imageFile.value != null
                    ? Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: FileImage(controller.imageFile.value!),
                              fit: BoxFit.cover),
                          border: Border.all(
                            color: Kolors.successColor,
                            width: 5,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                      )
                    : cameraWidget(),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Click on Capture to take the Selfie",
              style: CustomTextStyle(
                textColor: Kolors.successColor,
                textSize: 16,
                textWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          TakePhotoButton(
            onTap: () {
              controller.takePicture();
            },
          ),
          const SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }

  Widget cameraWidget() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.25),
            width: 4,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: !controller.isCameraInitialized.value
            ? const SizedBox.shrink()
            : ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CameraPreview(
                  controller.cameraController!,
                ),
              ),
      ),
    );
  }
}
