import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/job_page/views/job_tile.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/similar_jobs_page_controller.dart';

class SimilarJobsPageView extends GetView<SimilarJobsPageController> {
  const SimilarJobsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundSecondary,
      appBar: customAppBar(title: "Similar Jobs"),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: controller.isApplicationSuccess
                ? applicationSuccessWidget()
                : applicationRejectedWidget(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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

  Widget applicationSuccessWidget() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffE5FFFA),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/png/icons/application_success.png',
              height: 32,
              width: 32,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Applied Successfully!",
                    style: CustomTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Delivery Executive-Biker at Zomato",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget applicationRejectedWidget() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Kolors.backgroundAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/png/icons/close-circular.png',
              height: 32,
              width: 32,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Application Rejected!",
                    style: CustomTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "You Didn't Match The Job Criteria. Try Exploring More Opportunities Below",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
