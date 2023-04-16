import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';
import 'package:dotted_border/dotted_border.dart';

class DottedAddButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const DottedAddButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: const Color(0xFFFA6F2C),
      strokeWidth: 1,
      dashPattern: const [5],
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      radius: const Radius.circular(20),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: SizedBox(
          height: 40,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImagePath.add,
                height: 16.67,
                color: Kolors.checkBoxColor,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: CustomTextStyle(
                  color: Kolors.backgroundActionColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
