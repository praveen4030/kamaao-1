import 'package:flutter/material.dart';

class CommonBasePageAppBar extends StatelessWidget {
  const CommonBasePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/images/profile.png"),
      const Spacer(),
      icon("assets/images/png/icons/telegram.png", () {}),
      const SizedBox(width: 12),
      icon("assets/images/png/icons/message-question.png", () {}),
      const SizedBox(width: 12),
      icon("assets/images/png/icons/notification.png", () {}),
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
