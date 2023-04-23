import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/components/widgets/custom_tab_bar_view.dart';
import 'package:kamao/app/modules/notification_page/views/notification_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';

import '../controllers/notification_page_controller.dart';

class NotificationPageView extends GetView<NotificationPageController> {
  const NotificationPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: customAppBar(
          title: "Notification",
          actionWidget: InkWell(
            onTap: () {
              Get.toNamed(Routes.NOTIFICATION_SETTINGS_PAGE);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/images/png/icons/setting-2.png',
                height: 24,
                width: 24,
              ),
            ),
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leadingWidth: 0,
                elevation: 0.0,
                leading: const SizedBox(),
                pinned: true,
                floating: false,
                toolbarHeight: 49,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTabBarView(
                        indicatorPadding: 8,
                        isScrollable: true,
                        controller: controller.tabController,
                        tabList: const [
                          "General (12)",
                          "Jobs & tasks (2)",
                          "Courses (4)",
                          "Delivery(4)",
                        ],
                      ),
                      const CustomDivider(
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Builder(
            builder: (context) {
              return TabBarView(
                controller: controller.tabController,
                children: [
                  notificationsList(),
                  notificationsList(),
                  notificationsList(),
                  notificationsList(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget notificationsList() {
    return ListView.builder(
      itemBuilder: (context, index) => NotificationTile(
        notificationModel: controller.notificationsList[index],
      ),
      itemCount: controller.notificationsList.length,
    );
  }
}
