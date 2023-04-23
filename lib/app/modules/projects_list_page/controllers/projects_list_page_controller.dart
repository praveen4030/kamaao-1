import 'package:get/get.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';
import 'package:kamao/app/utils/image_path.dart';

class ProjectsListPageController extends GetxController {
  List<ProjectModel> projectList = [];
  List<String> buttonsList = [
    "All",
    "Online Sellers",
    "Restaurant & Retail",
  ];
  RxInt selectedIndex = 0.obs;
  String category = "";
  List<MilestoneModel> milestonesList = [];

  @override
  void onInit() {
    super.onInit();
    category = Get.arguments;
    milestonesList = [
      MilestoneModel(
        title: "Milestone 1",
        description: "Joined Zomato & completed first order within 3 days",
        amount: "50",
        milestoneValue: "1",
      ),
      MilestoneModel(
        title: "Milestone 2",
        description: "Completed 10 orders within 7 days",
        amount: "100",
        milestoneValue: "10",
      ),
      MilestoneModel(
        title: "Milestone 3",
        description: "Completed 30 orders within 15 days",
        amount: "150",
        milestoneValue: "30",
      ),
      MilestoneModel(
        title: "Milestone 4",
        description: "Completed 50 orders within 25 days",
        amount: "200",
        milestoneValue: "50",
      ),
    ];
    projectList = [
      ProjectModel(
        milestonesList: milestonesList,
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: true,
        earnCoins: 300,
        amount: 800,
      ),
      ProjectModel(
        milestonesList: milestonesList,
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: false,
        earnCoins: 200,
        amount: 500,
      ),
      ProjectModel(
        milestonesList: milestonesList,
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: true,
        earnCoins: 300,
        amount: 800,
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
