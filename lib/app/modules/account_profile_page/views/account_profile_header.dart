import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/account_profile_page/controllers/account_profile_page_controller.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/util_functions.dart';

class AccountProfileHeader extends GetView<AccountProfilePageController> {
  const AccountProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 90,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xffFF868B),
                      Color(0xffFFAD7D),
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
                                controller.userDetailsModel.name,
                                style: CustomTextStyle(
                                  fontSize: 14,
                                  color: Kolors.whiteColor,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "${controller.userDetailsModel.gender},  ${(UtilFunctions.getAge(controller.userDetailsModel.dob))}",
                                style: CustomTextStyle(
                                  fontSize: 12,
                                  color: Kolors.whiteColor,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              iconText(
                                'assets/images/png/icons/location.png',
                                controller.userDetailsModel.address,
                                color: Kolors.whiteColor,
                                horizontalPadding: 0,
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              userAdditionalDetails(),
              editDetailsTile(),
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
                        image: AssetImage(
                          'assets/images/png/profile_header.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: InkWell(
                          onTap: () async {
                            Get.toNamed(
                                Routes.ACCOUNT_PROFILE_PAGE_EDIT_PROFILE);
                          },
                          child: controller.userDetailsModel.image.isNotEmpty
                              ? Image.network(
                                  controller.userDetailsModel.image,
                                  fit: BoxFit.cover,
                                  height: 80,
                                  width: 80,
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Kolors.whiteColor,
                                    borderRadius: BorderRadius.circular(500),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/png/icons/add-circle.png",
                                      height: 24,
                                      width: 24,
                                      color: Kolors.tertiarycolor,
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

  Widget userAdditionalDetails() {
    return Container(
      height: 96,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Kolors.backgroundLight,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          iconText(
            'assets/images/png/icons/call.png',
            controller.userDetailsModel.phone,
          ),
          iconText(
            'assets/images/png/icons/sms.png',
            controller.userDetailsModel.email,
          ),
          Row(
            children: [
              iconText(
                'assets/images/png/icons/experience.png',
                controller.userDetailsModel.experience,
              ),
              iconText(
                'assets/images/png/icons/education.png',
                controller.userDetailsModel.education,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget editDetailsTile() {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_EDIT_PROFILE);
      },
      child: Container(
        height: 24,
        decoration: BoxDecoration(
          color: Kolors.backgroundActionColor,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Edit your Profile",
              style: CustomTextStyle(
                fontSize: 12,
                color: Kolors.whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              'assets/images/png/icons/edit-2.png',
              height: 16,
              width: 16,
              color: Kolors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget iconText(
    String icon,
    String text, {
    Color? color,
    double horizontalPadding = 8,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            height: 16,
            width: 16,
            color: color ?? Kolors.secondarycolor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: CustomTextStyle(
              fontSize: 12,
              color: color ?? Kolors.secondarycolor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
