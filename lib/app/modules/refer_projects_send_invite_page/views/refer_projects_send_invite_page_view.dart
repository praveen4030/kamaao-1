import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/refer_projects_page/views/refer_invite_bs.dart';
import 'package:kamao/app/modules/refer_projects_send_invite_page/views/view_banner_dialog.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/refer_projects_send_invite_page_controller.dart';

class ReferProjectsSendInvitePageView
    extends GetView<ReferProjectsSendInvitePageController> {
  const ReferProjectsSendInvitePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: "Refer Projects"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 3,
              ),
              Text(
                "Select collateral to share",
                style: CustomTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Choose one marketing banner to share with your invite links.",
                style: CustomTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Kolors.tertiarycolor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                ("Long press to view banner").toUpperCase(),
                style: CustomTextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Kolors.textInfo,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                itemCount: controller.bannerImagesList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return bannerImage(controller.bannerImagesList[index]);
                },
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: "Send Invite",
        onTap: () {
          showCustomBottomSheet(
            borderRadius: 24,
            isScrollControlled: true,
            backgroundColor: Kolors.integrfaceInputBg,
            child: const ReferInviteBs(),
          );
        },
      ),
    );
  }

  Widget bannerImage(BannerModel model) {
    return InkWell(
      onLongPress: () {
        Get.dialog(
          Dialog(
              child: ViewBannerDialog(
            bannerModel: model,
          )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            model.image,
            height: 200,
            fit: BoxFit.fill,
            width: Get.width,
          ),
        ),
      ),
    );
  }
}
