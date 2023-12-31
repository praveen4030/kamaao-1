import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

class PrimaryButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String? title;
  final double? borderRadius;
  final double? height;
  final double? width;
  final bool? isWidth;
  final Color? buttonColor;
  final bool? isBorder;
  final bool isGradient;
  final bool isLowOpacity;
  final bool isSmallButton;
  final Color? borderColor;
  final double? borderWidth;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final bool isEnabled;
  final String? icon;

  const PrimaryButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.isEnabled = true,
    this.borderRadius,
    this.height,
    this.width,
    this.isWidth = false,
    this.isGradient = false,
    this.isSmallButton = false,
    this.buttonColor,
    this.isBorder = false,
    this.isLowOpacity = false,
    this.borderColor,
    this.fontSize,
    this.borderWidth = 1,
    this.color = Colors.white,
    this.fontWeight,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: isEnabled ? onTap : null,
      child: Container(
        height: height ?? 48,
        width: isWidth == true ? width : double.infinity,
        decoration: BoxDecoration(
          color: !isEnabled
              ? Kolors.disabledButton
              : buttonColor ?? Kolors.backgroundActionColor,
          boxShadow: [
            BoxShadow(
              color: Kolors.whiteColor.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 4,
              blurStyle: BlurStyle.normal,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(borderRadius ?? 48),
          border: isBorder!
              ? Border.all(
                  color: borderColor ?? Kolors.blackColor, width: borderWidth!)
              : null,
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title!,
                style: CustomTextStyle(
                  color: color,
                  fontSize: fontSize ?? 16,
                  fontWeight: fontWeight ?? FontWeight.w700,
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
      ),
    );
  }
}
