import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class CustomTabBarView extends StatelessWidget {
  final List<String> tabList;
  final TabController controller;
  final bool isScrollable;
  final double indicatorPadding;
  const CustomTabBarView({
    Key? key,
    required this.tabList,
    required this.controller,
    this.isScrollable = false,
    this.indicatorPadding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: Get.width,
      decoration: const BoxDecoration(),
      child: TabBar(
        isScrollable: isScrollable,
        padding: EdgeInsets.zero,
        controller: controller,
        unselectedLabelColor: Kolors.tertiarycolor,
        labelColor: Kolors.highlightcolor,
        indicatorColor: Kolors.highlightcolor,
        indicatorPadding: EdgeInsets.symmetric(horizontal: indicatorPadding),
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
