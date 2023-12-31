import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class DropdownButtonWidget extends StatelessWidget {
  final String selectedValue;
  final List<String> values;
  final Function onChanged;
  final String hint;
  final String icon;
  const DropdownButtonWidget({
    Key? key,
    required this.onChanged,
    required this.selectedValue,
    required this.values,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      iconSize: 0,
      isDense: true,
      isExpanded: true,
      decoration: InputDecoration(
        icon: null,
        contentPadding: const EdgeInsets.all(0),
        labelText: hint,
        labelStyle: const TextStyle(
          color: Color(0xff6E6E6E),
        ),
        hintText: hint,
        hintStyle: CustomTextStyle(
          fontSize: 16,
          color: Kolors.tertiarycolor,
        ),
        suffixIcon: SizedBox(
          width: 20,
          height: 20,
          child: Center(
            child: Image.asset(
              "assets/images/png/icons/arrow-up.png",
              width: 20,
              height: 20,
              color: Kolors.tertiarycolor,
            ),
          ),
        ),
        prefixIcon: SizedBox(
          width: 20,
          height: 20,
          child: Center(
            child: Image.asset(
              icon,
              width: 20,
              height: 20,
              color: Kolors.tertiarycolor,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Kolors.seperatorHighlight, width: 1.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Kolors.seperatorDark, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Kolors.seperatorDark, width: 1),
        ),
      ),
      value: values.contains(selectedValue) ? selectedValue : null,
      onChanged: (newValue) {
        onChanged(newValue);
      },
      items: values.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item,
                style: CustomTextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
