import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_utils.dart';

class UploadDocumentBs extends StatelessWidget {
  final Function pickImageTap;
  final Function takePhotoTap;
  final bool isOpenCamera;
  final Function? onRemovePhoto;
  const UploadDocumentBs({
    Key? key,
    required this.pickImageTap,
    required this.takePhotoTap,
    this.isOpenCamera = false,
    this.onRemovePhoto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upload Photo",
            style: CustomTextStyle(
              textSize: 18,
              textWeight: FontWeight.w700,
              textColor: Kolors.secondaryTextColor,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          InkWell(
            onTap: () async {
              final image = await ImageUtils.pickImage(ImageSource.gallery);
              pickImageTap(image);
            },
            child: Row(
              children: [
                Image.asset(
                  "assets/images/png/gallery.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  "Upload From Gallery",
                  style: CustomTextStyle(
                    textSize: 16,
                    textWeight: FontWeight.w500,
                    textColor: Kolors.tertiaryTextColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: () async {
              if (isOpenCamera) {
                final image = await ImageUtils.pickImage(ImageSource.camera);
                takePhotoTap(image);
                return;
              }
              takePhotoTap();
            },
            child: Row(
              children: [
                Image.asset(
                  "assets/images/png/camera.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  "Take a Photo",
                  style: CustomTextStyle(
                    textSize: 16,
                    textWeight: FontWeight.w500,
                    textColor: Kolors.tertiaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
          if (onRemovePhoto != null)
            const CustomDivider(
              verticalPadding: 12,
            ),
          if (onRemovePhoto != null)
            InkWell(
              onTap: () async {
                onRemovePhoto!();
              },
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/png/icons/delete.png",
                    height: 20,
                    width: 20,
                    color: Kolors.errorColor,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "Remove Photo",
                    style: CustomTextStyle(
                      textSize: 16,
                      textWeight: FontWeight.w500,
                      textColor: Kolors.errorColor,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
