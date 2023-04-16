import 'package:flutter/material.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/theme/colors.dart';

class BorderSelectButton extends StatelessWidget {
  final bool isSelected;
  final Function onTap;
  final String text;

  const BorderSelectButton({
    Key? key,
    required this.isSelected,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BorderButton(
      text: text,
      onTap: () {
        onTap();
      },
      color: isSelected ? Kolors.seperatorHighlight : Kolors.tertiarycolor,
      bgColor: isSelected ? Kolors.foundationOrange : Colors.transparent,
    );
  }
}
