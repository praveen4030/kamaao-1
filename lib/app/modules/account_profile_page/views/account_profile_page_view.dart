import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/components/widgets/custom_tab_bar_view.dart';
import 'package:kamao/app/modules/account_profile_page/account_settings/account_settings_page.dart';
import 'package:kamao/app/modules/account_profile_page/profile_page/profile_list_page.dart';
import 'package:kamao/app/modules/account_profile_page/views/account_profile_header.dart';

import '../controllers/account_profile_page_controller.dart';

class AccountProfilePageView extends GetView<AccountProfilePageController> {
  const AccountProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: customAppBar(title: "Account"),
        body: NestedScrollView(headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverToBoxAdapter(
              child: AccountProfileHeader(),
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
                  background: CustomTabBarView(
                controller: controller.tabController,
                tabList: const [
                  "Profile",
                  "Settings",
                ],
              )),
            ),
          ];
        }, body: Builder(
          builder: (context) {
            return TabBarView(
              controller: controller.tabController,
              children: const [
                ProfileListPage(),
                AccountSettingsPage(),
              ],
            );
          },
        )),
      ),
    );
  }
}
