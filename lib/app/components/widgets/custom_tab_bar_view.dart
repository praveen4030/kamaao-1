import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class CustomTabBarView extends StatelessWidget {
  final List<String> tabList;
  final TabController controller;
  const CustomTabBarView({
    Key? key,
    required this.tabList,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: Get.width,
      decoration: const BoxDecoration(),
      child: TabBar(
        isScrollable: false,
        padding: EdgeInsets.zero,
        controller: controller,
        unselectedLabelColor: Kolors.tertiarycolor,
        labelColor: Kolors.highlightcolor,
        indicatorColor: Kolors.highlightcolor,
        labelStyle: CustomTextStyle(
          fontWeight: FontWeight.w500,
        ),
        tabs: tabList
            .map(
              (e) => Tab(
                text: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
