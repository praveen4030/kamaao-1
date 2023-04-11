import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kamao/app/components/text/dropdown_button_widget.dart';
import 'package:kamao/app/components/text/text_field_widget.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/controllers/onboarding_add_user_details_page_controller.dart';

class AddDetailsStep1Form
    extends GetView<OnboardingAddUserDetailsPageController> {
  const AddDetailsStep1Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        TextFieldWidget(
          hint: "Full Name",
          tec: controller.nameTEC,
          prefixIcon: 'assets/images/png/icons/profile.png',
          onChanged: (val) {
            controller.nameChanged(val);
          },
        ),
        const SizedBox(height: 16),
        DropdownButtonWidget(
          hint: "Gender",
          onChanged: (val) {
            controller.genderSelected(val);
          },
          selectedValue: controller.genderSelected.value,
          values: const [
            'Male',
            'Female',
            'Other',
          ],
          icon: controller.genderSelected.value == "Male"
              ? 'assets/images/png/icons/man.png'
              : 'assets/images/png/icons/man.png',
        ),
        const SizedBox(height: 16),
        TextFieldWidget(
          hint: "Date of Birth",
          tec: controller.dobTEC,
          prefixIcon: 'assets/images/png/icons/calendar.png',
          onTap: () {
            datePick();
          },
          isEnabled: false,
        ),
      ],
    );
  }

  void datePick() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (pickedDate != null) {
      final dob = DateFormat("dd/MM/yyyy").format(pickedDate);
      controller.dobTEC.text = dob;
      controller.dateOfBirth(pickedDate);
    }
  }
}
