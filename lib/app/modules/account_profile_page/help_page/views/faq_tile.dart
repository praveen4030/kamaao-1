import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class FaqTile extends StatelessWidget {
  final FaqTileModel faqTileModel;
  const FaqTile({
    Key? key,
    required this.faqTileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          faqTileModel.isExpanded.toggle();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Kolors.backgroundSecondary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          faqTileModel.title,
                          style: CustomTextStyle(
                            textSize: 16,
                            textWeight: FontWeight.w500,
                            textColor: Kolors.secondaryTextColor,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          faqTileModel.isExpanded.toggle();
                        },
                        child: Image.asset(
                          faqTileModel.isExpanded.value
                              ? 'assets/images/png/icons/arrow-up.png'
                              : 'assets/images/png/icons/arrow-down.png',
                          height: 20,
                          width: 20,
                          color: Kolors.checkBoxColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (faqTileModel.isExpanded.value)
                    Text(
                      faqTileModel.subtitle,
                      style: CustomTextStyle(
                        textColor: Kolors.tertiaryTextColor,
                        textSize: 14,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FaqTileModel {
  final String title;
  final String subtitle;
  final RxBool isExpanded;
  FaqTileModel({
    required this.title,
    required this.subtitle,
    required this.isExpanded,
  });
}
