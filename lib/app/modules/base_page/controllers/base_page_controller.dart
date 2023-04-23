import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasePageController extends GetxController {
  RxInt pageIndex = 0.obs;
  final PageController pagecontroller = PageController();
  void onTap(int pageIndex) {
    onPageChanged(pageIndex);
    pagecontroller.animateToPage(
      pageIndex,
      duration: const Duration(microseconds: 200),
      curve: Curves.linear,
    );
  }

  void onPageChanged(int index) {
    pageIndex.value = index;
  }
}
