import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OnboardingOtpPageController extends GetxController {
  RxBool isSuccess = false.obs;
  final int _otpCodeLength = 4;
  RxBool isLoadingButton = false.obs;
  RxBool isEnabled = false.obs;
  RxString otpCode = "".obs;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);
  Rxn<TextEditingController> textEditingController =
      Rxn<TextEditingController>();
  bool isTextEmpty = false;
  OtpFieldController otpFieldController = OtpFieldController();
  @override
  void onInit() {
    textEditingController.value = TextEditingController();

    super.onInit();
  }

  void verifyOtpCode() {
    FocusScope.of(Get.context!).requestFocus(FocusNode());
    Timer(const Duration(milliseconds: 4000), () {
      isLoadingButton(false);
      isEnabled(false);
    });
  }

  onOtpVerified() async {
    isSuccess(true);
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(Routes.ONBOARDING_ADD_USER_DETAILS_PAGE);
  }
}
