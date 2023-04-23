import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/refer_projects_page/views/refer_invite_bs.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/refer_projects_page_controller.dart';

class ReferProjectsPageView extends GetView<ReferProjectsPageController> {
  const ReferProjectsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: controller.isProjectRefer ? "Refer Projects" : "Refer Job"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset(
                  controller.referModel.image,
                  height: controller.isProjectRefer ? 110 : 150,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              coinsEarnInfoWidget(),
              const SizedBox(
                height: 12,
              ),
              howItWorks(),
              const SizedBox(
                height: 12,
              ),
              pointsInfo(),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: controller.isProjectRefer ? "Proceed" : "Invite Now",
        onTap: () {
          if (controller.isProjectRefer) {
            Get.toNamed(Routes.REFER_PROJECTS_SEND_INVITE_PAGE);
          } else {
            showCustomBottomSheet(
              borderRadius: 24,
              isScrollControlled: true,
              backgroundColor: Kolors.integrfaceInputBg,
              child: const ReferInviteBs(),
            );
          }
        },
      ),
    );
  }

  Widget pointsInfo() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Kolors.backgroundSecondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/png/coin_info.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You get',
                      style: CustomTextStyle(
                        fontSize: 14,
                        color: Kolors.tertiarycolor,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "100 points = ₹100",
                      style: CustomTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Kolors.integrfaceInputBg,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: Row(
            children: [
              Text(
                "refer 5 friends and get extra reward",
                style: CustomTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget howItWorks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "How it works",
          style: CustomTextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return listTile(
              title: controller.referModel.listModel[index].title,
              subtitle: controller.referModel.listModel[index].subtitle,
              image: controller.referModel.listModel[index].icon,
            );
          },
          itemCount: controller.referModel.listModel.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ],
    );
  }

  Widget listTile({
    required String title,
    required String subtitle,
    required String image,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 32,
            width: 32,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: CustomTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  subtitle,
                  style: CustomTextStyle(
                    fontSize: 14,
                    color: Kolors.tertiarycolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget coinsEarnInfoWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Kolors.integrfaceInputBg,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 21,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.referModel.title,
                  style: CustomTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Kolors.secondarycolor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                subtitleWidget(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            color: Kolors.seperatorLight,
            width: 1,
            height: 40,
          ),
          Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You Get",
                  style: CustomTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Kolors.secondarycolor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/png/coin_tilt.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        "${controller.referModel.pointsToEarn} points",
                        style: CustomTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Kolors.tertiarycolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget subtitleWidget() {
    if (controller.isProjectRefer) {
      return Text(
        controller.referModel.subtitle,
        style: CustomTextStyle(
          fontSize: 14,
          color: Kolors.highlightcolor,
        ),
      );
    }
    return Row(
      children: [
        Image.asset(
          'assets/images/png/icons/wallet-2.png',
          height: 16,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          controller.referModel.subtitle,
          style: CustomTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Kolors.tertiarycolor,
          ),
        ),
      ],
    );
  }
}
