import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

class SelectButton extends StatelessWidget {
  final String text;
  final Function onCancel;

  const SelectButton({
    Key? key,
    required this.onCancel,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onCancel();
      },
      child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            color: Kolors.integrfaceInputBg,
            boxShadow: [
              BoxShadow(
                color: Kolors.whiteColor.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 4,
                blurStyle: BlurStyle.normal,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Kolors.seperatorHighlight, width: 2),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  getMaxLengthText(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle(
                    color: Kolors.seperatorHighlight,
                    fontWeight: Constants.medium,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  'assets/images/png/close-circle.png',
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          )),
    );
  }

  String getMaxLengthText() {
    if (text.length > 15) {
      return '${text.substring(0, 15)}...';
    } else {
      return text;
    }
  }
}
