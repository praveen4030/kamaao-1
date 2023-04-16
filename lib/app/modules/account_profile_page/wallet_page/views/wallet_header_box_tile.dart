import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class WalletHeaderBoxTile extends StatelessWidget {
  final String text;
  final String icon;
  final Function onTap;
  const WalletHeaderBoxTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Kolors.containerBackgroundColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            Image.asset(
              icon,
              height: 24,
              width: 24,
            ),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: CustomTextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
