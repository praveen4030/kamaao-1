import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';

class BorderButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final Color color;
  final String? icon;
  final Color? bgColor;
  const BorderButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
    this.bgColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          border: Border.all(color: color),
          color: bgColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: CustomTextStyle(
                color: color,
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
