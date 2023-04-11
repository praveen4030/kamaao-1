import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/theme/colors.dart';

class IndicatorTile extends StatelessWidget {
  final bool isSelected;
  const IndicatorTile({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: isSelected ? 16 : 10,
      decoration: BoxDecoration(
        color: isSelected
            ? Kolors.backgroundActionColor
            : Kolors.backgroundActionColor.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(isSelected ? 20 : 35),
        ),
      ),
    );
  }
}
