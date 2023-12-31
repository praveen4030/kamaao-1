import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';

class TitleSubtitleHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleSubtitleHeader({
    Key? key,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 24),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: CustomTextStyle(
                color: Kolors.secondarycolor,
                fontSize: 24,
                fontWeight: Constants.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              subtitle,
              style: CustomTextStyle(
                color: Kolors.tertiarycolor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
