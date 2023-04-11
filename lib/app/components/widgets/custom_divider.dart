import 'package:flutter/material.dart';
import 'package:kamao/app/theme/colors.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double verticalPadding;
  const CustomDivider({
    Key? key,
    this.height = 1,
    this.verticalPadding = 0,
    this.color = Kolors.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalPadding),
      height: height,
      color: color,
    );
  }
}
