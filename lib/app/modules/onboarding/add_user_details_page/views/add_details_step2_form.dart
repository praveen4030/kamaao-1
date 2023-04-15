import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/text_field_widget.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/controllers/onboarding_add_user_details_page_controller.dart';

class AddDetailsStep2Form
    extends GetView<OnboardingAddUserDetailsPageController> {
  const AddDetailsStep2Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          hint: "Email",
          tec: controller.emailTEC,
          prefixIcon: 'assets/images/png/icons/sms.png',
          onChanged: (val) {
            controller.emailChanged(val);
          },
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          hint: "Location",
          tec: controller.locationTEC,
          prefixIcon: 'assets/images/png/icons/location.png',
          onChanged: (val) {
            controller.locationChanged(val);
          },
        ),
      ],
    );
  }
}
