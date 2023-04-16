import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/project_page/models/project_banner_model.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';
import 'package:kamao/app/modules/project_page/views/project_banner_tile.dart';
import 'package:kamao/app/theme/colors.dart';

import 'project_tile.dart';

class ProjectsList extends StatelessWidget {
  final String title;
  final List<ProjectModel> projectsList;
  final ProjectBannerModel? bannerModel;

  const ProjectsList({
    Key? key,
    required this.title,
    required this.projectsList,
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
          ProjectTile(
            projectModel: projectsList[0],
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return ProjectTile(
                projectModel: projectsList[index],
              );
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projectsList.length,
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
        Text(
          'See all',
          style: CustomTextStyle(
            fontSize: 16,
            color: Kolors.highlightcolor,
          ),
        ),
      ],
    );
  }
}
