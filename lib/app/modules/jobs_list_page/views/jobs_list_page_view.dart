import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/job_page/controllers/job_page_controller.dart';
import 'package:kamao/app/modules/job_page/views/filters_list.dart';
import 'package:kamao/app/modules/job_page/views/job_tile.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/jobs_list_page_controller.dart';

class JobsListPageView extends GetView<JobsListPageController> {
  const JobsListPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final jobController = Get.find<JobPageController>();
    return Scaffold(
      backgroundColor: Kolors.backgroundSecondary,
      appBar: customAppBar(title: controller.category),
      body: CustomScrollView(
        slivers: [
          Obx(
            () => SliverAppBar(
              leadingWidth: 0,
              elevation: 0.0,
              leading: const SizedBox(),
              pinned: true,
              floating: false,
              toolbarHeight: (jobController.isFiltersApplied()) ? 128 : 72,
              flexibleSpace: const FlexibleSpaceBar(
                background: Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
                  child: FiltersList(),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return JobTile(
                    jobModel: controller.jobTilesList[index],
                  );
                },
                childCount: controller.jobTilesList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
