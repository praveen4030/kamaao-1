import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class DetailsTile extends StatelessWidget {
  final DetailsTileModel detailsTileModel;
  const DetailsTile({
    Key? key,
    required this.detailsTileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: const Color(0xffFFF9F6),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      detailsTileModel.tag,
                      style: CustomTextStyle(
                        color: Kolors.highlightcolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    detailsTileModel.trailingText ?? "",
                    style: CustomTextStyle(
                      color: Kolors.highlightcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  detailsTileModel.title,
                  style: CustomTextStyle(
                    color: Kolors.secondarycolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  detailsTileModel.subtitle,
                  style: CustomTextStyle(
                    color: Kolors.tertiarycolor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (detailsTileModel.subtitle2?.isNotEmpty ?? false)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      detailsTileModel.subtitle2!,
                      style: CustomTextStyle(
                        color: Kolors.tertiarycolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsTileModel {
  final String tag;
  final String title;
  final String subtitle;
  final String? subtitle2;

  final String? trailingText;

  DetailsTileModel({
    required this.tag,
    required this.title,
    required this.subtitle,
    this.subtitle2,
    this.trailingText,
  });
}
