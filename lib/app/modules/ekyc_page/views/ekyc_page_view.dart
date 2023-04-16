import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/ekyc_page/widgets/title_subtitle_header.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/ekyc_page_controller.dart';

class EkycPageView extends GetView<EkycPageController> {
  const EkycPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "My Profile",
        actionText: "Skip",
        onTapAction: () {
          Get.toNamed(Routes.EKYC_PAGE_EKYC_VERIFICATION_PENDING);
        },
      ),
      body: Column(
        children: [
          const TitleSubtitleHeader(
            title: "KYC Verification",
            subtitle:
                "Complete your e KYC in 2 simple steps and start earning today",
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
              color: Kolors.integrfaceInputBg,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                imageTextView("Face Verification", "ekyc_face_verification"),
                imageTextView("Aadhar Verification", "ekyc_aadhar"),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: "Proceed",
        onTap: () {
          Get.toNamed(Routes.EKYC_PAGE_FACE_VERIFICATION);
        },
      ),
    );
  }

  Widget imageTextView(String text, String image) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Image.asset(
            "assets/images/png/$image.png",
            height: 64,
            width: 112,
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: Text(
              text,
              style: CustomTextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Kolors.tertiarycolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
