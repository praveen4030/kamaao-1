import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

class LocationSuggestionTile extends StatelessWidget {
  final String text;
  const LocationSuggestionTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Kolors.integrfaceInputBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(children: [
            Image.asset(
              ImagePath.locfill,
              height: 16,
              width: 16,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: CustomTextStyle(
                color: Kolors.secondarycolor,
                fontSize: 14,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
