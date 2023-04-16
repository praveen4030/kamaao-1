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
                        color: Kolors.secondarycolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      description,
                      style: CustomTextStyle(
                        color: Kolors.tertiarycolor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              if (amount != null)
                Text(
                  "₹${amount!.toInt()}",
                  style: CustomTextStyle(
                    color: Kolors.errorColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
            ]),
          ),
        ),
      ),
    );
  }
}
