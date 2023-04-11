import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/take_photo_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/ekyc_page/widgets/title_subtitle_header.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/ekyc_page_take_document_photo_controller.dart';

class EkycPageTakeDocumentPhotoView
    extends GetView<EkycPageTakeDocumentPhotoController> {
  const EkycPageTakeDocumentPhotoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "My Profile",
      ),
      body: Column(
        children: [
          TitleSubtitleHeader(
            title: controller.title,
            subtitle: controller.subtitle,
          ),
          const SizedBox(
            height: 48,
          ),
          cameraPreview(),
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

  Widget cameraPreview() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 200,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Kolors.seperatorHighlight),
      ),
      child: Obx(
        () => !controller.isCameraInitialized.value
            ? const SizedBox.shrink()
            : AspectRatio(
                aspectRatio: Get.width / 200,
                child: CameraPreview(
                  controller.cameraController!,
                ),
              ),
      ),
    );
  }
}
