import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/application_rejected_page_controller.dart';

class ApplicationRejectedPageView
    extends GetView<ApplicationRejectedPageController> {
  const ApplicationRejectedPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "Job Details",
        leadingWidget: InkWell(
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
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 12,
            ),
            Image.asset(
              'assets/images/png/icons/application_rejected.png',
              height: 100,
              width: 100,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Application Rejected",
              style: CustomTextStyle(
                color: Kolors.secondarycolor,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Sorry, you did not qualify for the job as you didn’t meet the required criteria ",
              textAlign: TextAlign.center,
              style: CustomTextStyle(
                color: Kolors.tertiarycolor,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            BorderButton(
              color: Kolors.seperatorHighlight,
              text: "View Similar Jobs",
              onTap: () {
                Get.toNamed(Routes.SIMILAR_JOBS_PAGE, arguments: false);
              },
            )
          ],
        ),
      ),
      bottomSheet: BottomSheetButton(
        isEnabled: true,
        text: "Try Again",
        onTap: () {
          Get.back();
        },
      ),
    );
  }
}
