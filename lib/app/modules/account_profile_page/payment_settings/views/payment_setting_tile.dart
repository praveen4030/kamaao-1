import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_path.dart';

class PaymentSettingTile extends StatelessWidget {
  final String text;
  final String icon;
  final Function onTap;
  const PaymentSettingTile({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Kolors.seperatorLight, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    icon,
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    text,
                    style: CustomTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    ImagePath.icArRight,
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
