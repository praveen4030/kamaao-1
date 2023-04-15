import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class ImageTileButton extends StatelessWidget {
  final ImageTileModel imageTileModel;
  final bool isSelected;

  const ImageTileButton({
    Key? key,
    required this.imageTileModel,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: isSelected
                ? Kolors.integrfaceInputBg
                : Kolors.backgroundSecondary,
            border: Border.all(
              color: isSelected
                  ? Kolors.seperatorHighlight
                  : Kolors.seperatorLight,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                imageTileModel.image,
                height: 64,
                width: 64,
              ),
            ),
          ),
        ),
        const Spacer(),
        Text(
          imageTileModel.title,
          textAlign: TextAlign.center,
          style: CustomTextStyle(
            textWeight: FontWeight.w500,
            textColor: Kolors.tertiaryTextColor,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

class ImageTileModel {
  final String title;
  final String image;
  RxBool isSelected = false.obs;

  ImageTileModel({
    required this.title,
    required this.image,
    required this.isSelected,
  });
}
