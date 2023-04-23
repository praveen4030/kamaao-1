import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';

class BorderButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color color;
  final String? icon;
  final Color? bgColor;
  final double borderRadius;
  final Color? textColor;
  final double? height;
  final double borderWidth;
  final double verticalPadding;
  final String? prefixImage;
  const BorderButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
    this.bgColor,
    this.icon,
    this.borderRadius = 48,
    this.textColor,
    this.height,
    this.borderWidth = 1,
    this.verticalPadding = 10,
    this.prefixImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        padding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: color, width: borderWidth),
          color: bgColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixImage?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  prefixImage!,
                  height: 20,
                  width: 20,
                ),
              ),
            Text(
              text,
              style: CustomTextStyle(
                color: textColor ?? color,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Image.asset(
                  icon!,
                  height: 20,
                  width: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
