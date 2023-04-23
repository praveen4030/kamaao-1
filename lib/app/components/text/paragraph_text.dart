import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/theme/colors.dart';

class ParagraphText extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final bool isDivider;
  const ParagraphText({
    Key? key,
    required this.title,
    required this.description,
    this.image = '',
    this.isDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: CustomTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        if (image.isNotEmpty)
          Image.asset(
            image,
            height: 114,
          ),
        if (description.isNotEmpty)
          Text(
            description,
            style: CustomTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Kolors.tertiarycolor,
            ),
          ),
        const SizedBox(height: 12),
        if (isDivider)
          const CustomDivider(
            color: Kolors.seperatorLight,
          ),
      ],
    );
  }
}
