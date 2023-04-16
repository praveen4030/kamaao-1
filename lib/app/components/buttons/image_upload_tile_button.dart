import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/bottom_sheet/upload_document_bs.dart';
import 'package:kamao/app/components/buttons/upload_document_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/theme/colors.dart';

class ImageUploadTileButton extends StatelessWidget {
  final ImageUploadTileModel imageUploadTileModel;
  final bool isSelected;
  final Function? onTap1;
  final Function? onTap2;

  const ImageUploadTileButton({
    Key? key,
    required this.imageUploadTileModel,
    this.isSelected = false,
    this.onTap1,
    this.onTap2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color:
            isSelected ? Kolors.integrfaceInputBg : Kolors.backgroundSecondary,
        border: Border.all(
          color: isSelected ? Kolors.seperatorHighlight : Kolors.seperatorLight,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    imageUploadTileModel.image,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Text(
                      imageUploadTileModel.title,
                      style: CustomTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Kolors.primarycolor,
                      ),
                    ),
                  ),
                ],
              ),
              if (isSelected) const CustomDivider(),
              if (isSelected)
                Obx(
                  () => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (imageUploadTileModel.buttonFront != null)
                          if (imageUploadTileModel.fileFront.value != null)
                            imageAvailableWidget(
                              true,
                              imageUploadTileModel.fileFront.value!,
                            )
                          else
                            Expanded(
                              flex: 1,
                              child: UploadDocumentButton(
                                onSelectImage: (image) {
                                  if (image == null) return;
                                  imageUploadTileModel.fileFront(image);
                                },
                                text: imageUploadTileModel.buttonFront!,
                              ),
                            ),
                        if (imageUploadTileModel.buttonBack != null)
                          Container(
                            height: 24,
                            width: 1,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            color: Kolors.dividerColor,
                          ),
                        if (imageUploadTileModel.buttonBack != null)
                          if (imageUploadTileModel.fileBack.value != null)
                            imageAvailableWidget(
                              false,
                              imageUploadTileModel.fileBack.value!,
                            )
                          else
                            Expanded(
                              flex: 1,
                              child: UploadDocumentButton(
                                onSelectImage: (image) {
                                  if (image == null) return;
                                  imageUploadTileModel.fileBack(image);
                                },
                                text: imageUploadTileModel.buttonBack!,
                              ),
                            ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageAvailableWidget(bool isFront, File file) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: () {
          showCustomBottomSheet(
              child: UploadDocumentBs(
            onRemovePhoto: () {
              if (isFront) {
                imageUploadTileModel.fileFront.value = null;
                Get.back();
                return;
              }
              imageUploadTileModel.fileBack.value = null;
              Get.back();
            },
            pickImageTap: (image) {
              Get.back();
              if (image == null) return;
              if (isFront) {
                imageUploadTileModel.fileFront(image);
                return;
              }
              imageUploadTileModel.fileBack(image);
            },
            takePhotoTap: (image) {
              Get.back();
              if (image == null) return;
              if (isFront) {
                imageUploadTileModel.fileFront(image);
                return;
              }
              imageUploadTileModel.fileBack(image);
            },
          ));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isFront ? "Front Side" : "Back Side",
              style: CustomTextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Kolors.tertiarycolor,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "img123.png",
                    style: CustomTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Kolors.highlightcolor,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/png/icons/delete.png",
                  height: 16,
                  width: 16,
                  color: Kolors.errorColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageUploadTileModel {
  final String title;
  final String image;
  final String? buttonFront;
  final String? buttonBack;
  Rxn<File> fileFront = Rxn<File>();
  Rxn<File> fileBack = Rxn<File>();

  ImageUploadTileModel({
    required this.title,
    required this.image,
    this.buttonFront,
    this.buttonBack,
    required this.fileFront,
    required this.fileBack,
  });
}
