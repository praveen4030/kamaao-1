import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class CustomCheckBox extends StatelessWidget {
  final RxBool isSelected;
  final String text;

  const CustomCheckBox({
    Key? key,
    required this.isSelected,
    this.text = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Checkbox(
            onChanged: (val) {
              isSelected(val);
            },
            checkColor: Kolors.whiteColor,
            value: isSelected.value,
            activeColor: Kolors.checkBoxColor,
          ),
        ),
        Expanded(
          child: Text(
            style:
                CustomTextStyle(color: const Color(0xFF6E6E6E), fontSize: 15),
            text,
          ),
        )
      ],
    );
  }
}
