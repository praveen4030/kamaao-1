import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/utils/constants.dart';

import '../../theme/colors.dart';

AppBar customAppBar(
    {required String title,
    String? actionText,
    Function()? onTapAction,
    Widget? leadingWidget,
    Widget? actionWidget}) {
  return AppBar(
    elevation: 0.5,
    centerTitle: true,
    leading: leadingWidget,
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
                        color: Kolors.highlightcolor,
                        fontSize: 16,
                        fontWeight: Constants.bold,
                      ),
                    ),
                  ),
                )),
    ],
    title: Text(
      title,
      style: CustomTextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Kolors.primarycolor,
      ),
    ),
  );
}
