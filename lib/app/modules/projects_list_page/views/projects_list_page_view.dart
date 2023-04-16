import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/border_select_button.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/project_page/views/project_tile.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/projects_list_page_controller.dart';

class ProjectsListPageView extends GetView<ProjectsListPageController> {
  const ProjectsListPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kolors.backgroundSecondary,
      appBar: customAppBar(title: controller.category),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 72,
              padding: const EdgeInsets.symmetric(vertical: 16),
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.buttonsList.length,
                itemBuilder: (context, index) {
                  return Obx(
                    () => Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 16 : 4,
                          right: index == controller.buttonsList.length - 1
                              ? 16
                              : 0),
                      child: BorderSelectButton(
                        text: controller.buttonsList[index],
                        isSelected: controller.selectedIndex.value == index,
                        onTap: () {
                          controller.selectedIndex.value = index;
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProjectTile(
                    projectModel: controller.projectList[index],
                  );
                },
                childCount: controller.projectList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
