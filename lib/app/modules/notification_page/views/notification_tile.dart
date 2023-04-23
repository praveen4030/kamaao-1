import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/notification_page/models/notification_model.dart';
import 'package:kamao/app/theme/colors.dart';

class NotificationTile extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationTile({
    Key? key,
    required this.notificationModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:
            notificationModel.isActive ? Kolors.foundationOrange : Colors.white,
      ),
      child: Row(
        children: [
          if (notificationModel.isActive)
            Container(
              height: 8,
              width: 8,
              margin: const EdgeInsets.only(
                right: 8,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Kolors.highlightcolor,
              ),
            )
          else
            const SizedBox(
              width: 16,
            ),
          Image.asset(
            notificationModel.image,
            height: 48,
            width: 48,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationModel.title,
                  style: CustomTextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  notificationModel.body,
                  style: CustomTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Kolors.secondarycolor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                notificationModel.dateTime,
                style: CustomTextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Kolors.tertiarycolor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                'assets/images/png/icons/arrow-keyboard-right.png',
                height: 16,
                width: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
