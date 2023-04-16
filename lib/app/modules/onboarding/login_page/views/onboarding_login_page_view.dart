import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/custom_checkbox.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/onboarding/login_page/views/indicator_tile.dart';
import 'package:kamao/app/modules/onboarding/login_page/views/slide_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';
import 'package:kamao/app/utils/util_functions.dart';

import '../controllers/onboarding_login_page_controller.dart';

class OnboardingLoginPageView extends GetView<OnboardingLoginPageController> {
  const OnboardingLoginPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(
            height: 20,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 510,
              viewportFraction: 1.0,
              autoPlay: true,
              enableInfiniteScroll: true,
              scrollPhysics: const BouncingScrollPhysics(),
              onPageChanged: (index, reason) {
                controller.currentSlide.value = index;
                controller.update();
              },
              scrollDirection: Axis.horizontal,
              onScrolled: (value) {
                value = 1;
                controller.update();
              },
            ),
            carouselController: controller.imageController,
            items: controller.introList.map((model) {
              return Builder(
                builder: (BuildContext context) {
                  return SlideTile(
                    model: model,
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 8,
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IndicatorTile(isSelected: controller.currentSlide.value == 0),
                const SizedBox(width: 3),
                IndicatorTile(isSelected: controller.currentSlide.value == 1),
                const SizedBox(width: 3),
                IndicatorTile(isSelected: controller.currentSlide.value == 2),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              color: Kolors.fillClr,
              border: Border.all(
                color: const Color(0xFFBFBFBF),
              ),
            ),
            height: 48,
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Image.asset(
                  ImagePath.imgFlag,
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text("+91",
                    style: CustomTextStyle(
                        fontWeight: Constants.bold,
                        fontSize: 17,
                        color: Kolors.appDarkcolor)),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: Center(
                      child: TextField(
                        onChanged: (value) {
                          controller.isNumberValidated(
                              UtilFunctions.isValidNumber(value));
                        },
                        keyboardType: TextInputType.number,
                        controller: controller.numberTEC,
                        decoration: InputDecoration.collapsed(
                            filled: true,
                            fillColor: Kolors.fillClr,
                            hintText: 'Enter mobile number'),
                        cursorColor: Kolors.secondarycolor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Obx(
            () => PrimaryButton(
              isEnabled: controller.isNumberValidated.value,
              onTap: () async {
                Get.toNamed(Routes.ONBOARDING_OTP_PAGE);
              },
              title: "Submit",
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          CustomCheckBox(
            isSelected: controller.isCheckBoxSelected,
            text: "I agree to recieve updated on Whatsapp",
          ),
        ],
      ),
    );
  }
}
