import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/bottom_sheet/upload_document_bs.dart';
import 'package:kamao/app/routes/app_pages.dart';

class ImageUploadWidget extends StatelessWidget {
  final String image;
  final Rxn<File> file;
  final Function takePhotoTap;
  final Function pickImageTap;
  final String takePhotoTitle;
  const ImageUploadWidget({
    Key? key,
    required this.file,
    required this.image,
    required this.takePhotoTap,
    required this.pickImageTap,
    required this.takePhotoTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
