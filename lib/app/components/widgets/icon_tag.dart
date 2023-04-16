import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';

class IconTag extends StatelessWidget {
  final String text;
  final String image;
  final Color textColor;
  final Color bgColor;
  const IconTag({
    Key? key,
    required this.text,
    required this.image,
    required this.textColor,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: bgColor,
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 16,
            width: 16,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            text,
            style: CustomTextStyle(
              color: textColor,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
