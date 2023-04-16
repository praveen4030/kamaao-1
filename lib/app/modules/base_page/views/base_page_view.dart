import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/dashboard_page/views/dashboard_page_view.dart';
import 'package:kamao/app/modules/job_page/views/job_page_view.dart';
import 'package:kamao/app/modules/learn_page/views/learn_page_view.dart';
import 'package:kamao/app/modules/project_page/views/project_page_view.dart';
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
      body: PageView(
        controller: controller.pagecontroller,
        onPageChanged: controller.onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          JobPageView(),
          ProjectPageView(),
          DashboardPageView(),
          Container(),
          LearnPageView(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.pageIndex.value,
          onTap: controller.onTap,
          selectedItemColor: Kolors.highlightcolor,
          selectedIconTheme: IconThemeData(
            color: Kolors.highlightcolor,
          ),
          selectedLabelStyle: CustomTextStyle(
            fontSize: 10,
            color: Kolors.highlightcolor,
          ),
          unselectedLabelStyle: CustomTextStyle(
            fontSize: 10,
            color: Kolors.primarycolor,
          ),
          items: [
            BottomNavigationBarItem(
              icon: icon('search-normal', false),
              activeIcon: icon('search-normal', true),
              backgroundColor: Kolors.highlightcolor,
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: icon('projects', false),
              activeIcon: icon('projects', true),
              label: 'Projects',
            ),
            BottomNavigationBarItem(
              icon: icon('dashboard', false),
              activeIcon: icon('dashboard', true),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: icon('store', false),
              activeIcon: icon('store', true),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: icon('learn', false),
              activeIcon: icon('learn', true),
              label: 'Learn',
            ),
          ],
        ),
      ),
    );
  }

  Widget icon(
    String icon,
    bool isSelected,
  ) {
    return Image.asset(
      "assets/images/png/icons/$icon.png",
      color: isSelected ? Kolors.highlightcolor : Kolors.primarycolor,
      height: 24,
      width: 24,
    );
  }
}
