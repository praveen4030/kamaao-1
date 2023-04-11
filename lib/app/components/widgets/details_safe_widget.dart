import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_path.dart';

class DetailsSafeWidget extends StatelessWidget {
  final Function onTap;

  const DetailsSafeWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 32,
        width: 231,
        decoration: BoxDecoration(
          color: Kolors.foundationLightBlue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              ImagePath.verify,
              height: 16,
            ),
            Text(
              "Your information is 100% safe with us",
              style: CustomTextStyle(
                textColor: Kolors.foundationBlue,
                textSize: 12,
                textWeight: FontWeight.w500,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
