import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class SelectTileButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const SelectTileButton({
    Key? key,
    required this.text,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        height: 70,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: isSelected
              ? Kolors.integrfaceInputBg
              : Kolors.backgroundSecondary,
          border: Border.all(
            color:
                isSelected ? Kolors.seperatorHighlight : Kolors.seperatorLight,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            style: CustomTextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
