import 'package:flutter/material.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';

class CustomTextStyle extends TextStyle {
  final Color? textColor;
  final FontWeight? textWeight;
  final double? textSize;
  final String? textFamily;
  final TextDecoration? textDecorations;
  final Paint? textBackground;
  final double? textLetterSpacing;
  final double? textHeight;
  final FontStyle? textStyle;

  CustomTextStyle({
    this.textHeight,
    this.textColor,
    this.textWeight = FontWeight.normal,
    this.textSize = 14,
    this.textFamily = Constants.fontFamily,
    this.textDecorations = TextDecoration.none,
    this.textBackground,
    this.textLetterSpacing = 0.0,
    this.textStyle = FontStyle.normal,
  }) : super(
          color: textColor ?? Kolors.appDarkTextColor,
          fontWeight: textWeight,
          fontSize: textSize,
          fontFamily: textFamily,
          decoration: textDecorations,
          background: textBackground,
          letterSpacing: textLetterSpacing,
          height: textHeight,
          fontStyle: textStyle,
        );
}
