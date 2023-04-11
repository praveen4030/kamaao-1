import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/theme/colors.dart';

Future<void> showCustomBottomSheet({
  required Widget child,
  bool isDismissible = true,
  double borderRadius = 16,
  bool isScrollControlled = false,
  Color? backgroundColor,
  EdgeInsetsGeometry? edgeInsets,
  Function? onDismiss,
}) async {
  showModalBottomSheet(
    context: Get.context!,
    isDismissible: isDismissible,
    isScrollControlled: isScrollControlled,
    backgroundColor: backgroundColor ?? Kolors.whiteColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(borderRadius),
      topRight: Radius.circular(borderRadius),
    )),
    builder: (context) {
      return child;
    },
  ).then(
    (value) {
      if (onDismiss == null) return;
      onDismiss();
    },
  );
}
