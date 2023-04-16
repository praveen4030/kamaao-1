import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/bottom_sheet/upload_document_bs.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_path.dart';

class UploadDocumentButton extends StatelessWidget {
  final String text;
  final Function onSelectImage;
  const UploadDocumentButton({
    Key? key,
    required this.onSelectImage,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Kolors.seperatorHighlight,
      strokeWidth: 1,
      dashPattern: const [5],
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      radius: const Radius.circular(48),
      child: InkWell(
        onTap: () {
          showCustomBottomSheet(
              child: UploadDocumentBs(
            pickImageTap: (image) {
              if (image != null) {
                onSelectImage(image);
              }
              Get.back();
            },
            takePhotoTap: (image) {
              if (image != null) {
                onSelectImage(image);
              }
              Get.back();
            },
          ));
        },
        child: SizedBox(
          height: 32,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/png/document-upload.png',
                height: 12,
                width: 12,
                color: Kolors.checkBoxColor,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: CustomTextStyle(
                  color: Kolors.backgroundActionColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
