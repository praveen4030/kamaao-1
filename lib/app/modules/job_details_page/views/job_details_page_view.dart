import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/custom_tab_bar_view.dart';
import 'package:kamao/app/modules/job_details_page/views/job_details_about_page.dart';
import 'package:kamao/app/modules/job_details_page/views/job_details_benefits_page.dart';
import 'package:kamao/app/modules/job_details_page/views/job_details_requirements_page.dart';
import 'package:kamao/app/modules/job_page/views/job_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/job_details_page_controller.dart';

class JobDetailsPageView extends GetView<JobDetailsPageController> {
  const JobDetailsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: customAppBar(
          title: "Job Details",
          actionWidget: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/png/icons/bookmark.png',
                height: 24,
                width: 24,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverToBoxAdapter(
                  child: JobTile(
                    jobModel: controller.jobModel,
                    isCard: false,
                  ),
                ),
                SliverAppBar(
                  leadingWidth: 0,
                  elevation: 0.0,
                  leading: const SizedBox(),
                  pinned: true,
                  floating: false,
                  toolbarHeight: 51,
                  flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 2),
                          blurRadius: 8,
                          color: Kolors.boxShadowColor.withOpacity(0.07),
                        )
                      ],
                    ),
                    child: CustomTabBarView(
                      controller: controller.tabController,
                      tabList: const [
                        "Benefits",
                        "Requirements",
                        "About",
                      ],
                    ),
                  )),
                ),
              ];
            },
            body: Builder(
              builder: (context) {
                return Container(
                  color: Kolors.backgroundSecondary,
                  child: TabBarView(
                    controller: controller.tabController,
                    children: const [
                      JobDetailsBenefitsPage(),
                      JobDetailsRequirementsPage(),
                      JobDetailsAboutPage(),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        bottomSheet: bottomSheet(),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      width: Get.width,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 7)
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: BorderButton(
                  color: Kolors.backgroundActionColor,
                  onTap: () {
                    Get.toNamed(Routes.REFER_PROJECTS_PAGE, arguments: false);
                  },
                  text: 'Refer Job & Earn',
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: PrimaryButton(
                  isEnabled: true,
                  onTap: () {
                    Get.toNamed(Routes.JOB_QUESTIONS_PAGE, arguments: false);
                  },
                  icon: 'assets/images/png/icons/arrow.png',
                  title: 'Apply Now',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
