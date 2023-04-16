import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/custom_tab_bar_view.dart';
import 'package:kamao/app/modules/project_details_page/views/project_about_page.dart';
import 'package:kamao/app/modules/project_details_page/views/project_benefits_page.dart';
import 'package:kamao/app/modules/project_details_page/views/project_how_to_earn_page.dart';
import 'package:kamao/app/modules/project_page/views/project_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/project_details_page_controller.dart';

class ProjectDetailsPageView extends GetView<ProjectDetailsPageController> {
  const ProjectDetailsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: customAppBar(title: "Project Details"),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: ProjectTile(
                  projectModel: controller.projectModel,
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
                    // collapseMode: CollapseMode.parallax,
                    background: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 8,
                        color: Kolors.boxShadowColor.withOpacity(0.07),
                      )
                    ],
                  ),
                  child: CustomTabBarView(
                    controller: controller.tabController,
                    tabList: const [
                      "How to Earn",
                      "Benefits",
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
                    ProjectHowToEarnPage(),
                    ProjectBenefitsPage(),
                    ProjectAboutPage(),
                  ],
                ),
              );
            },
          ),
        ),
        bottomSheet: BottomSheetButton(
          isEnabled: true,
          text: "Refer Tasks & Earn",
          onTap: () {
            Get.toNamed(Routes.REFER_PROJECTS_PAGE);
          },
        ),
      ),
    );
  }
}
