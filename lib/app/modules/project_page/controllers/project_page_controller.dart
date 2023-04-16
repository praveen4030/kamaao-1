import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/project_page/models/project_banner_model.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';
import 'package:kamao/app/modules/project_page/views/projects_list.dart';
import 'package:kamao/app/utils/image_path.dart';

class ProjectPageController extends GetxController {
  List<Widget> projectsList = [];
  RxInt currentSlide = 0.obs;
  List<ProjectModel> projectTilesList = [];
  @override
  void onInit() {
    super.onInit();
    projectTilesList = [
      ProjectModel(
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: true,
        earnCoins: 300,
        amount: 800,
      ),
      ProjectModel(
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: false,
        earnCoins: 200,
        amount: 500,
      ),
      ProjectModel(
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: true,
        earnCoins: 300,
        amount: 800,
      ),
    ];
    projectsList = [
      ProjectsList(
        projectsList: projectTilesList,
        title: "Recent Projects",
        bannerModel: ProjectBannerModel(
          title: "Refer & Earn Money",
          description: "Refer jobs to your friends and get rewarded.",
          image: "refer_earn",
          buttonText: "Refer",
          color: const Color(0xffD4F3FF),
          buttonColor: const Color(0xff33A3CF),
          onTap: () {},
        ),
      ),
      ProjectsList(
        projectsList: projectTilesList,
        title: "Banking & Finance",
        bannerModel: ProjectBannerModel(
          title: "Learn New Skills",
          description: "Buy mobile, vehicles accessories etc",
          image: "learn_skill",
          buttonText: "Refer",
          color: const Color(0xffFFE4F5),
          buttonColor: const Color(0xff33A3CF),
          onTap: () {},
        ),
      ),
      ProjectsList(
        projectsList: projectTilesList,
        title: "Install and Earn",
        bannerModel: ProjectBannerModel(
          title: "Buy Accessories",
          description: "Buy mobile & vehicles accessories etc",
          image: "buy_accessories",
          buttonText: "Refer",
          color: const Color(0xffF7F1FF),
          buttonColor: const Color(0xff33A3CF),
          onTap: () {},
        ),
      ),
      ProjectsList(
        projectsList: projectTilesList,
        title: "Merchant Onboarding",
      ),
      ProjectsList(
        projectsList: projectTilesList,
        title: "Daily Tasks",
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
