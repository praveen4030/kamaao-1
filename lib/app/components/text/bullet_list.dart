import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class BulletList extends StatelessWidget {
  final String title;
  final List<String> bullets;
  const BulletList({
    Key? key,
    required this.title,
    required this.bullets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: CustomTextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: bullets.length,
          itemBuilder: (context, index) {
            return Text(
              '• ${bullets[index]}',
              style: CustomTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Kolors.tertiarycolor,
              ),
            );
          },
        ),
      ],
    );
  }
}
