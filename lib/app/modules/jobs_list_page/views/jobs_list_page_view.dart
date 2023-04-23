import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/job_page/views/job_tile.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/jobs_list_page_controller.dart';

class JobsListPageView extends GetView<JobsListPageController> {
  const JobsListPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundSecondary,
      appBar: customAppBar(title: controller.category),
      body: CustomScrollView(
        slivers: [
          // SliverToBoxAdapter(
          //   child: Container(
          //     height: 72,
          //     padding: const EdgeInsets.symmetric(vertical: 16),
          //     color: Colors.white,
          //     child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: controller.buttonsList.length,
          //       itemBuilder: (context, index) {
          //         return Obx(
          //           () => Padding(
          //             padding: EdgeInsets.only(
          //                 left: index == 0 ? 16 : 4,
          //                 right: index == controller.buttonsList.length - 1
          //                     ? 16
          //                     : 0),
          //             child: BorderSelectButton(
          //               text: controller.buttonsList[index],
          //               isSelected: controller.selectedIndex.value == index,
          //               onTap: () {
          //                 controller.selectedIndex.value = index;
          //               },
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),
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
