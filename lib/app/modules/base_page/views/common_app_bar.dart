import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/modules/base_page/views/telegram_share_bs.dart';
import 'package:kamao/app/routes/app_pages.dart';

class CommonBasePageAppBar extends StatelessWidget {
  const CommonBasePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE);
        },
        child: Image.asset(
          "assets/images/profile.png",
        ),
      ),
      const Spacer(),
      icon("assets/images/png/icons/telegram.png", () {
        showCustomBottomSheet(child: const TelegramShareBs());
      }),
      const SizedBox(width: 12),
      icon("assets/images/png/icons/message-question.png", () {}),
      const SizedBox(width: 12),
      icon("assets/images/png/icons/notification.png", () {
        Get.toNamed(Routes.NOTIFICATION_PAGE);
      }),
    ]);
  }

  Widget icon(String icon, Function onTap) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            icon,
            height: 16,
            width: 16,
          ),
        ),
      ),
    );
  }
}
