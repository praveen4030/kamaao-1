import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';
import 'package:kamao/app/modules/job_page/views/job_tile.dart';
import 'package:kamao/app/modules/project_page/models/project_banner_model.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';
import 'package:kamao/app/modules/project_page/views/project_banner_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

class JobsList extends StatelessWidget {
  final String title;
  final List<JobModel> jobsList;
  final ProjectBannerModel? bannerModel;

  const JobsList({
    Key? key,
    required this.title,
    required this.jobsList,
    this.bannerModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          headerTile(),
          const SizedBox(
            height: 16,
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return JobTile(
                jobModel: jobsList[index],
              );
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: jobsList.length,
          ),
          if (bannerModel != null)
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: ProjectBannerTile(
                projectBannerModel: bannerModel!,
              ),
            ),
        ],
      ),
    );
  }

  Widget headerTile() {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: CustomTextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.JOBS_LIST_PAGE, arguments: title);
          },
          child: Text(
            'See all',
            style: CustomTextStyle(
              fontSize: 16,
              color: Kolors.highlightcolor,
            ),
          ),
        ),
      ],
    );
  }
}
