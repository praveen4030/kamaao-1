import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/otp_pin_fields.dart';
import 'package:kamao/app/modules/onboarding/otp_page/views/login_success.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../controllers/onboarding_otp_page_controller.dart';

class OnboardingOtpPageView extends GetView<OnboardingOtpPageController> {
  const OnboardingOtpPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          toolbarHeight: 0,
        ),
        body: controller.isSuccess.value
            ? const LoginSuccess()
            : Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 36, 16, 45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Verify with OTP',
                        style: CustomTextStyle(
                          textWeight: FontWeight.w700,
                          textSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "OTP sent to +91-98258764631",
                        style: CustomTextStyle(
                          textSize: 16,
                          textColor: Kolors.titleColor,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      OtpPinFieldsWidget(
                        onChanged: (pin) {
                          controller.otpCode(pin);
                        },
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Resend OTP",
                                style: CustomTextStyle(
                                  textWeight: FontWeight.w700,
                                  textSize: 16,
                                  textColor: Kolors.textDisabled,
                                ),
                              ),
                              Text(
                                " (30 sec)",
                                style: CustomTextStyle(
                                  textWeight: FontWeight.w700,
                                  textSize: 16,
                                  textColor: Kolors.textInfo,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Change Number",
                                style: CustomTextStyle(
                                  textWeight: FontWeight.w700,
                                  textSize: 16,
                                  textColor: Kolors.orangeTextColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 48,
                          width: 120,
                          child: Obx(
                            () => PrimaryButton(
                              onTap: () {
                                controller.onOtpVerified();
                              },
                              title: "Continue",
                              isEnabled: controller.otpCode.value.length == 4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
