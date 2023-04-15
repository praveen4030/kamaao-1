import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/bottom_sheet/upload_document_bs.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/controllers/onboarding_add_user_details_page_controller.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/util_functions.dart';

class UserProfileDisplayView
    extends GetView<OnboardingAddUserDetailsPageController> {
  const UserProfileDisplayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Column(
            children: [
              Container(
                height: 70,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xff738BFF),
                      Color(0xffAB96FF),
                      Color(0xffB498FF),
                    ],
                    end: Alignment.centerRight,
                    begin: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.nameChanged.value.isNotEmpty
                                    ? controller.nameChanged.value
                                    : "Full Name",
                                style: CustomTextStyle(
                                  textSize: 14,
                                  textColor: Kolors.whiteColor,
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                "${controller.genderSelected.value.isNotEmpty ? controller.genderSelected.value : "Gender"}, ${controller.dateOfBirth.value == null ? "Age" : (UtilFunctions.getAge(controller.dateOfBirth.value!))}",
                                style: CustomTextStyle(
                                  textSize: 12,
                                  textColor: Kolors.whiteColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                height: 110,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Color(0xffF7F1FF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 2,
                        ),
                        iconText(
                            'assets/images/png/icons/location.png',
                            controller.locationChanged.value.isNotEmpty
                                ? controller.locationChanged.value
                                : "Address"),
                        iconText(
                          'assets/images/png/icons/call.png',
                          controller.locationChanged.value.isNotEmpty
                              ? controller.locationChanged.value
                              : "+91 9658768542",
                        ),
                        iconText(
                          'assets/images/png/icons/sms.png',
                          controller.emailChanged.value.isNotEmpty
                              ? controller.emailChanged.value
                              : "Email",
                        ),
                      ]),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 5),
              Row(
                children: [
                  const Spacer(),
                  Container(
                    height: 125,
                    width: 125,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/png/header_circle.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: const EdgeInsets.only(
                        bottom: 26, left: 26, right: 16, top: 16),
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: InkWell(
                          onTap: () async {
                            showImageUploadBs();
                          },
                          child: controller.imageSelected.value != null
                              ? Image.file(
                                  controller.imageSelected.value!,
                                  fit: BoxFit.fill,
                                  height: 80,
                                  width: 80,
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(500),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/png/icons/add-circle.png",
                                      height: 24,
                                      width: 24,
                                      color: Kolors.tertiaryTextColor,
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget iconText(String icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            height: 16,
            width: 16,
            color: Kolors.tertiaryTextColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: CustomTextStyle(
              textSize: 12,
              textColor: Kolors.tertiaryTextColor,
              textWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  void showImageUploadBs() {
    showCustomBottomSheet(
        child: UploadDocumentBs(
      onRemovePhoto: controller.imageSelected.value != null
          ? () {
              controller.imageSelected.value = null;
              Get.back();
            }
          : null,
      pickImageTap: (image) {
        controller.imageSelected(image);
        Get.back();
      },
      isOpenCamera: true,
      takePhotoTap: (image) {
        controller.imageSelected(image);
        Get.back();
      },
    ));
  }
}
