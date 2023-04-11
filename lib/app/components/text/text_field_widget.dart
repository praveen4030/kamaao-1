import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController tec;
  final String hint;
  final String? prefixIcon;
  final Function? onChanged;
  final bool isEnabled;
  final Function? onTap;
  final bool isDisabledBox;
  const TextFieldWidget({
    Key? key,
    required this.tec,
    required this.hint,
    this.onChanged,
    this.prefixIcon,
    this.isDisabledBox = false,
    this.isEnabled = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Container(
        color: isDisabledBox ? Kolors.backgroundSecondary : Colors.white,
        child: TextFormField(
          enabled: isEnabled,
          onTap: onTap as void Function()?,
          controller: tec,
          onChanged: (value) {
            if (onChanged != null) onChanged!(value);
          },
          style: CustomTextStyle(
            textColor: Kolors.secondaryTextColor,
            textSize: 16,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            labelText: hint,
            fillColor: isDisabledBox ? Kolors.seperatorLight : Colors.white,
            labelStyle: CustomTextStyle(
              textColor: Kolors.tertiaryTextColor,
              textSize: 16,
            ),
            hintText: hint,
            prefixIcon: prefixIcon == null
                ? null
                : SizedBox(
                    width: 24,
                    height: 24,
                    child: Center(
                      child: Image.asset(
                        prefixIcon!,
                        width: 24,
                        height: 24,
                        color: Kolors.tertiaryTextColor,
                      ),
                    ),
                  ),
            hintStyle: CustomTextStyle(
              textColor: Kolors.tertiaryTextColor,
              textSize: 16,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Kolors.seperatorDark, width: 1),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Kolors.seperatorDark,
                width: 1,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                color: Kolors.seperatorHighlight,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Kolors.seperatorDark,
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
