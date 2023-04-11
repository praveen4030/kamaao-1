import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class SuccessTransactionTile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double? amount;
  const SuccessTransactionTile({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Container(
          height: 78,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: const Color(0xffFFF9F6),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              Image.asset(image, height: 48),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: CustomTextStyle(
                        textColor: Kolors.secondaryTextColor,
                        textSize: 16,
                        textWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      description,
                      style: CustomTextStyle(
                        textColor: Kolors.tertiaryTextColor,
                        textSize: 12,
                        textWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              if (amount != null)
                Text(
                  "₹${amount!.toInt()}",
                  style: CustomTextStyle(
                    textColor: Kolors.errorColor,
                    textSize: 16,
                    textWeight: FontWeight.w700,
                  ),
                )
            ]),
          ),
        ),
      ),
    );
  }
}
