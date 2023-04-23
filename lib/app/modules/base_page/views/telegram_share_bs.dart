import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/theme/colors.dart';

class TelegramShareBs extends StatelessWidget {
  const TelegramShareBs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Choose a Telegram Channel",
                  style: CustomTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Center(
                  child: Image.asset(
                    'assets/images/png/icons/close-circle.png',
                    height: 32,
                  ),
                ),
              ),
            ],
          ),
        ),
        channelTile(
          image: 'assets/images/png/temp/channel1.png',
          title: 'Kamaao Jobs ',
          subtitle:
              'We post new job opportunities every day, which you can share with your friends & family',
        ),
        channelTile(
          image: 'assets/images/png/temp/channel2.png',
          title: 'Kamaao Projects',
          subtitle:
              'We post new Freelance opportunities every day, which you can share with your friends & family',
        ),
        channelTile(
          image: 'assets/images/png/temp/channel3.png',
          title: 'Kamaao Deals',
          subtitle: 'Get & Grab New deals directly',
        ),
      ],
    );
  }

  Widget channelTile({
    required String title,
    required String subtitle,
    required String image,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 44,
                width: 44,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: CustomTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Kolors.highlightcolor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Kolors.secondarycolor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/png/icons/circle-arrow-right.png',
                height: 24,
                width: 24,
              ),
            ],
          ),
        ),
        const CustomDivider(
          color: Color(0xffD8E2FF),
        ),
      ],
    );
  }
}
