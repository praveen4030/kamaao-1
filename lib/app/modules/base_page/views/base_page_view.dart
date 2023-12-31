import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/dashboard_page/views/dashboard_page_view.dart';
import 'package:kamao/app/modules/job_page/views/job_page_view.dart';
import 'package:kamao/app/modules/learn_page/views/learn_page_view.dart';
import 'package:kamao/app/modules/project_page/views/project_page_view.dart';
import 'package:kamao/app/modules/store_page/views/store_page_view.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/base_page_controller.dart';

class BasePageView extends GetView<BasePageController> {
  const BasePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: TabBarView(
        controller: controller.tabController,
        // onPageChanged: controller.onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          JobPageView(),
          ProjectPageView(),
          DashboardPageView(),
          StorePageView(),
          LearnPageView(),
        ],
      ),
      bottomSheet: Obx(
        () => SizedBox(
          height: 49,
          child: TabBar(
            controller: controller.tabController,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0,
            indicatorColor: Kolors.highlightcolor,
            isScrollable: false,
            indicator: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Kolors.highlightcolor,
                  width: 4,
                ),
              ),
            ),
            labelPadding: EdgeInsets.zero,
            // onTap: controller.onTap,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.zero,
                child: icon('search-normal', 0, "Job Search"),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: icon('projects', 1, "Projects"),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: icon('dashboard', 2, "Dashboard"),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: icon('store', 3, "Store"),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: icon('learn', 4, "Learn"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon(
    String icon,
    int index,
    String text,
  ) {
    return Container(
      color: index == controller.pageIndex.value
          ? const Color(0xffFFF5F0)
          : Colors.white,
      // width: Get.width / 5,
      height: 46,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/images/png/icons/$icon.png",
            color: index == controller.pageIndex.value
                ? Kolors.highlightcolor
                : Kolors.primarycolor,
            height: 24,
            width: 24,
          ),
          Center(
            child: Text(
              text,
              style: CustomTextStyle(
                fontSize: 10,
                color: index == controller.pageIndex.value
                    ? Kolors.highlightcolor
                    : Kolors.primarycolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
