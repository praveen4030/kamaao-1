import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/details_safe_widget.dart';
import 'package:kamao/app/modules/ekyc_page/widgets/title_subtitle_header.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/utils/image_path.dart';

import '../controllers/ekyc_page_ekyc_details_verification_controller.dart';

class EkycPageEkycDetailsVerificationView
    extends GetView<EkycPageEkycDetailsVerificationController> {
  const EkycPageEkycDetailsVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "My Profile",
      ),
      body: Column(
        children: [
          const TitleSubtitleHeader(
            title: "Details Verification",
            subtitle:
                "Please wait for few minutes don’t close the application. Your onboarding KYC verification is under process",
          ),
          const Spacer(),
          Image.asset(
            ImagePath.verifyphn,
            height: Get.height * 0.5,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: DetailsSafeWidget(
              onTap: () {
                Get.toNamed(Routes.EKYC_PAGE_EKYC_VERIFICATION_PENDING);
              },
            ),
          ),
          const SizedBox(height: 36)
        ],
      ),
    );
  }
}
