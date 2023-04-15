import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/text/dropdown_button_widget.dart';
import 'package:kamao/app/components/text/text_field_widget.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/controllers/onboarding_add_user_details_page_controller.dart';
import 'package:kamao/app/theme/colors.dart';

class AddDetailsStep1Form
    extends GetView<OnboardingAddUserDetailsPageController> {
  const AddDetailsStep1Form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
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
        TextFieldWidget(
          hint: "Date of Birth",
          tec: controller.dobTEC,
          prefixIcon: 'assets/images/png/icons/calendar.png',
          onTap: () {
            datePick();
          },
          isEnabled: false,
        ),
        const SizedBox(height: 16),
        Obx(
          () => PopupMenuButton<String>(
            position: PopupMenuPosition.under,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            constraints: BoxConstraints(
              minWidth: 2.0 * 56.0,
              maxWidth: MediaQuery.of(context).size.width - 32,
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<String>>[
                menuItem("Male", "assets/images/png/icons/dark_man.png", 0),
                menuItem("Female", "assets/images/png/icons/woman.png", 1),
                menuItem("Other", "assets/images/png/icons/dark_man.png", 2),
              ];
            },
            onSelected: (String selectedItem) {
              controller.genderSelected(selectedItem);
              controller.genderTEC.text = selectedItem;
            },
            child: AbsorbPointer(
              child: TextFieldWidget(
                hint: "Gender",
                tec: controller.genderTEC,
                prefixIcon: controller.genderSelected.value.isEmpty
                    ? 'assets/images/png/icons/man.png'
                    : controller.genderSelected.value == "Male" ||
                            controller.genderSelected.value == "Other"
                        ? 'assets/images/png/icons/dark_man.png'
                        : 'assets/images/png/icons/woman.png',
                onTap: null,
                isEnabled: false,
              ),
            ),
          ),
        )
      ],
    );
  }

  PopupMenuItem<String> menuItem(String text, String icon, int index) {
    return PopupMenuItem<String>(
      value: text,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      height: 46,
      child: Container(
        height: 46,
        width: double.infinity, // Add this line
        child: Column(
          children: [
            SizedBox(
              height: index == 0 ? 6 : 12,
            ),
            Row(
              children: [
                Image.asset(
                  icon,
                  height: 20,
                  width: 20,
                  color: Kolors.secondaryTextColor,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      text,
                      style: CustomTextStyle(
                        textColor: Kolors.secondaryTextColor,
                        textSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            if (index != 2)
              const CustomDivider(
                color: Kolors.seperatorLight,
              ),
          ],
        ),
      ),
    );
  }

  void datePick() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        builder: (context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: Kolors.checkBoxColor,
              colorScheme: ColorScheme.light(primary: Kolors.checkBoxColor),
              buttonTheme:
                  const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child!,
          );
        },
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (pickedDate != null) {
      final dob = DateFormat("dd MMM yyyy").format(pickedDate);
      controller.dobTEC.text = dob;
      controller.dateOfBirth(pickedDate);
    }
  }
}
