import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/modules/job_page/views/filters_list.dart';
import 'package:kamao/app/modules/job_page/views/jobs_header.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/job_page_controller.dart';

class JobPageView extends GetView<JobPageController> {
  const JobPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      backgroundColor: Kolors.backgroundSecondary,
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: JobsHeader(),
          ),
          Obx(
            () => SliverAppBar(
              leadingWidth: 0,
              elevation: 0.0,
              leading: const SizedBox(),
              pinned: true,
              floating: false,
              toolbarHeight: (controller.isFiltersApplied()) ? 128 : 72,
              flexibleSpace: const FlexibleSpaceBar(
                background: Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
                  child: FiltersList(),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              controller.jobsList.map((e) {
                return e;
              }).toList(),
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              "assets/images/png/refer_earn_banner.png",
              height: 162,
              width: Get.width,
              fit: BoxFit.fill,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
