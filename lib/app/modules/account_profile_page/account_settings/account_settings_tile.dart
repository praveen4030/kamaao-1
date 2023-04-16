import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';

class AccountSettingsTile extends StatelessWidget {
  final AccountSettingModel accountSettingsModel;
  const AccountSettingsTile({
    Key? key,
    required this.accountSettingsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        accountSettingsModel.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Kolors.seperatorLight,
          ),
          boxShadow: [
            BoxShadow(
              color: Kolors.boxShadowColor.withOpacity(0.07),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Image.asset(
              accountSettingsModel.icon,
              height: 24,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                accountSettingsModel.text,
                style: CustomTextStyle(
                  color: Kolors.primarycolor,
                  fontSize: 16,
                  fontWeight: Constants.medium,
                ),
              ),
            ),
            if (accountSettingsModel.isTrailingIcon)
              Image.asset(
                ImagePath.icArRight,
                height: 20,
              )
          ],
        ),
      ),
    );
  }
}

class AccountSettingModel {
  final Function onTap;
  final String text;
  final String icon;
  final bool isTrailingIcon;
  AccountSettingModel({
    required this.onTap,
    required this.text,
    required this.icon,
    this.isTrailingIcon = true,
  });
}
