import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasePageController extends GetxController
    with GetTickerProviderStateMixin {
  RxInt pageIndex = 0.obs;
  late TabController tabController;

  final PageController pagecontroller = PageController();
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    tabController.addListener(
      () {
        if (tabController.indexIsChanging) {
          pageIndex(tabController.index);
        }
      },
    );
  }

  void onTap(int index) {
    // pageIndex(index);
    // tabController.animateTo(
    //   index,
    //   duration: const Duration(microseconds: 200),
    //   curve: Curves.linear,
    // );
  }
}
