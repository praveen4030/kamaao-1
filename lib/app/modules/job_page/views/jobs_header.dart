import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/custom_bs.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/base_page/views/common_app_bar.dart';
import 'package:kamao/app/modules/job_page/controllers/job_page_controller.dart';
import 'package:kamao/app/modules/job_page/views/filters_bs.dart';
import 'package:kamao/app/modules/job_page/views/filters_list.dart';
import 'package:kamao/app/modules/onboarding/login_page/views/indicator_tile.dart';
import 'package:kamao/app/theme/colors.dart';

class JobsHeader extends GetView<JobPageController> {
  const JobsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffFFF2EB),
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          const CommonBasePageAppBar(),
          const SizedBox(
            height: 16,
          ),
          buttonsHeader(),
          const SizedBox(
            height: 16,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 148,
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
            items: ['', '', ''].map((model) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(
                    'assets/images/png/urgent_hiring.png',
                    height: 148,
                    fit: BoxFit.fill,
                    width: Get.width,
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 8,
          ),
          Obx(
            () => SizedBox(
              height: 20,
              child: Row(
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
          ),
        ],
      ),
    );
  }

  Widget buttonsHeader() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: button(
            color1: const Color(0xffBFE8FF),
            color2: const Color(0xffFAFBCB),
            child: columnButton(
              text: 'Work from Home',
              value: '44.8K',
              image: 'job_home',
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              button(
                color1: const Color(0xffDEC4FF),
                color2: const Color(0xffFFE3D6),
                child: rowButton(
                  text: 'Full time',
                  value: '58.8K',
                  image: 'job_fulltime',
                  height: 74,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              button(
                color1: const Color(0xffFFBEBE),
                color2: const Color(0xffFBFFCC),
                child: rowButton(
                  text: 'Part time',
                  value: '48.8K',
                  image: 'job_parttime',
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget button({
    required Color color1,
    required Color color2,
    required Widget child,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }

  Widget columnButton({
    required String text,
    required String value,
    required String image,
  }) {
    return SizedBox(
      height: 170,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/png/$image.png',
            height: 60,
            width: 60,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            value,
            style: CustomTextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: CustomTextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Kolors.secondarycolor,
            ),
          ),
        ],
      ),
    );
  }

  Widget rowButton({
    required String text,
    required String value,
    required String image,
    required double height,
  }) {
    return SizedBox(
      height: height,
      child: Row(
        children: [
          Image.asset(
            'assets/images/png/$image.png',
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value,
                  style: CustomTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  text,
                  style: CustomTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Kolors.secondarycolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
