import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_path.dart';

import '../controllers/ekyc_page_ekyc_verification_pending_controller.dart';

class EkycPageEkycVerificationPendingView
    extends GetView<EkycPageEkycVerificationPendingController> {
  const EkycPageEkycVerificationPendingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                ImagePath.pending,
                height: 65,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Kyc Verification Sending",
                style: CustomTextStyle(
                  color: Kolors.foundationYellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "We couldn/’t process your verification due to some improper \n                                    / cross verification delays.",
                  style: CustomTextStyle(
                    color: Kolors.tertiarycolor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              PrimaryButton(
                title: "Contact Support",
                onTap: () {},
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.ACCOUNT_PROFILE_PAGE);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Skip",
                    style: CustomTextStyle(
                      color: Kolors.highlightcolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
