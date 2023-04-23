import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/application_success_page_controller.dart';

class ApplicationSuccessPageView
    extends GetView<ApplicationSuccessPageController> {
  const ApplicationSuccessPageView({Key? key}) : super(key: key);
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
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/png/icons/application_success.png',
                      height: 62,
                      width: 62,
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  Text(
                    "Application Sent Successfully!",
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
                    "You have successfully applied for ",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle(
                      color: Kolors.tertiarycolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Delivery Executive Biker at Zomato.",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle(
                      color: Kolors.secondarycolor,
                      fontWeight: FontWeight.w700,
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
                      Get.toNamed(Routes.SIMILAR_JOBS_PAGE, arguments: true);
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            beSafeWidget(),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
      bottomSheet: bottomSheet(),
    );
  }

  Widget beSafeWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFFBE3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/png/icons/be_safe.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  "Be Safe & Secure",
                  style: CustomTextStyle(
                    color: Kolors.seperatorHighlight,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Do Not Pay Anything to Interviewer ",
            style: CustomTextStyle(
              color: Kolors.secondarycolor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      width: Get.width,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 7)
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              BorderButton(
                color: Kolors.backgroundActionColor,
                onTap: () {
                  Get.toNamed(Routes.REFER_PROJECTS_PAGE, arguments: false);
                },
                text: 'Message HR',
                icon: 'assets/images/png/icons/message-text.png',
              ),
              const Expanded(
                flex: 2,
                child: SizedBox.shrink(),
              ),
              Expanded(
                flex: 3,
                child: PrimaryButton(
                  isEnabled: true,
                  onTap: () {},
                  title: 'Call HR',
                  icon: 'assets/images/png/icons/call-outgoing.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
