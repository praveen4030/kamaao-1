import 'package:flutter/material.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';

class CustomTextStyle extends TextStyle {
  @override
  final Color? color;
  @override
  final FontWeight? fontWeight;
  @override
  final double? fontSize;
  @override
  final String? fontFamily;
  final TextDecoration? textDecorations;
  final Paint? textBackground;
  final double? textLetterSpacing;
  final double? textHeight;
  final FontStyle? textStyle;

  CustomTextStyle({
    this.textHeight,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.fontFamily = Constants.fontFamily,
    this.textDecorations = TextDecoration.none,
    this.textBackground,
    this.textLetterSpacing = 0.0,
    this.textStyle = FontStyle.normal,
  }) : super(
          color: color ?? Kolors.primarycolor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          decoration: textDecorations,
          background: textBackground,
          letterSpacing: textLetterSpacing,
          height: textHeight,
          fontStyle: textStyle,
        );
}
