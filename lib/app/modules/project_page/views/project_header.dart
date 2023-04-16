import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/base_page/views/common_app_bar.dart';
import 'package:kamao/app/modules/onboarding/login_page/views/indicator_tile.dart';
import 'package:kamao/app/modules/project_page/controllers/project_page_controller.dart';
import 'package:kamao/app/modules/project_page/views/header_banner_tile.dart';
import 'package:kamao/app/modules/project_page/views/project_header_button.dart';

class ProjectHeader extends GetView<ProjectPageController> {
  const ProjectHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffFFEBF0),
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
          Row(
            children: const [
              Expanded(
                child: ProjectHeaderButton(
                  icon: 'banking',
                  text: "Banking",
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: ProjectHeaderButton(
                  icon: 'insurance',
                  text: "Insurance",
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: ProjectHeaderButton(
                  icon: 'smallgigs',
                  text: "Small Gigs",
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: ProjectHeaderButton(
                  icon: 'onboardings',
                  text: "Onboardings",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          HeaderBannerTile(
            title: "Install 5 more apps & get extra reward",
            image: "extra_rewards",
            buttonText: "Explore",
            onTap: () {},
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
}
