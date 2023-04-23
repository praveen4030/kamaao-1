import 'package:get/get.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';

class JobsListPageController extends GetxController {
  List<JobModel> jobTilesList = [];
  RxInt selectedIndex = 0.obs;
  String category = "";
  List<MilestoneModel> milestonesList = [];

  @override
  void onInit() {
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
    jobTilesList = [
      JobModel(
        milestonesList: milestonesList,
        title: "Bike Driver",
        location: "Rohini Sector 22",
        salary: "₹10,000-₹15,000",
        company: "Uber",
        tagsList: [
          "Part time",
          "22 openings",
          "Work from home",
        ],
        companyLogo: 'assets/images/png/uber.png',
      ),
      JobModel(
        milestonesList: milestonesList,
        title: "Bike Driver",
        location: "Rohini Sector 22",
        salary: "₹10,000-₹15,000",
        company: "Uber",
        tagsList: [
          "Part time",
          "22 openings",
          "Work from home",
        ],
        companyLogo: 'assets/images/png/uber.png',
      ),
      JobModel(
        milestonesList: milestonesList,
        title: "Bike Driver",
        location: "Rohini Sector 22",
        salary: "₹10,000-₹15,000",
        company: "Uber",
        tagsList: [
          "Part time",
          "22 openings",
          "Work from home",
        ],
        companyLogo: 'assets/images/png/uber.png',
      ),
    ];
    super.onInit();
  }
}
