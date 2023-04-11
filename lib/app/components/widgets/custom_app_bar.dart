import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/utils/constants.dart';

import '../../theme/colors.dart';

AppBar customAppBar(
    {required String title,
    String? actionText,
    Function()? onTapAction,
    Widget? actionWidget}) {
  return AppBar(
    elevation: 0.5,
    centerTitle: true,
    actions: [
      actionWidget ??
          (actionText == null
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 15, 0),
                  child: GestureDetector(
                    onTap: () {
                      if (onTapAction != null) {
                        onTapAction();
                      }
                    },
                    child: Text(
                      actionText,
                      style: CustomTextStyle(
                        textColor: Kolors.highlightTextColor,
                        textSize: 16,
                        textWeight: Constants.bold,
                      ),
                    ),
                  ),
                )),
    ],
    title: Text(
      title,
      style: CustomTextStyle(
        textSize: 18,
        textWeight: Constants.bold,
      ),
    ),
  );
}
