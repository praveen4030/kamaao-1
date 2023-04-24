import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/job_page/models/filter_model.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';
import 'package:kamao/app/modules/job_page/views/jobs_list.dart';
import 'package:kamao/app/modules/project_page/models/project_banner_model.dart';

class JobPageController extends GetxController {
  List<Widget> jobsList = [];
  RxInt currentSlide = 0.obs;
  List<JobModel> jobTilesList = [];
  List<MilestoneModel> milestonesList = [];
  List<FiltersListModel> filtersList = [];
  List<FilterModel> primaryFiltersList = [];
  RxList<FilterModel> appliedFiltersList = RxList.empty(growable: true);
  CarouselController imageController = CarouselController();
  @override
  void onInit() {
    super.onInit();
    primaryFiltersList = [
      FilterModel(
        image: "assets/images/png/icons/delivery_job.png",
        text: "Delivery Jobs",
        isSelected: false.obs,
      ),
      FilterModel(
        image: "assets/images/png/icons/warehouse_job.png",
        text: "Warehouse Jobs",
        isSelected: false.obs,
      ),
      FilterModel(
        image: "assets/images/png/icons/delivery_job.png",
        text: "Cab Driver",
        isSelected: false.obs,
      ),
      FilterModel(
        image: "assets/images/png/icons/delivery_job.png",
        text: "Data Entry",
        isSelected: false.obs,
      ),
      FilterModel(
        image: "assets/images/png/icons/delivery_job.png",
        text: "Electrician",
        isSelected: false.obs,
      ),
      FilterModel(
        image: "assets/images/png/icons/delivery_job.png",
        text: "Sales Jobs",
        isSelected: false.obs,
      ),
      FilterModel(
        image: "assets/images/png/icons/delivery_job.png",
        text: "KYC Field Executive",
        isSelected: false.obs,
      ),
    ];
    filtersList = [
      FiltersListModel(
        title: "Job Type",
        filtersList: [
          FilterModel(
            text: "All",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Part Time",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Full Time",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Night Shift",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Work From Home",
            isSelected: false.obs,
          ),
        ],
      ),
      FiltersListModel(
        title: "Other Filters",
        filtersList: [
          FilterModel(
            text: "All",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Verified",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Kamaao",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Premium",
            isSelected: false.obs,
          ),
        ],
      ),
      FiltersListModel(
        title: "Salary",
        filtersList: [
          FilterModel(
            text: "0 - 10,000",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "10,000 - 20,000",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "20,000 - 30,000",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "30,000 - 40,000",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "40,000 - 50,000",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "50,000 +",
            isSelected: false.obs,
          ),
        ],
      ),
      FiltersListModel(
        title: "Distance",
        filtersList: [
          FilterModel(
            text: "Within 5 km",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Within 10 km",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Within 15 km",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Within 20 km",
            isSelected: false.obs,
          ),
          FilterModel(
            text: "Within 50 km",
            isSelected: false.obs,
          ),
        ],
      ),
    ];
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
        isVerified: true,
        tagsList: [
          "Part time",
          "22 openings",
          "Work from home",
        ],
        companyLogo: 'assets/images/png/uber.png',
      ),
      JobModel(
        milestonesList: milestonesList,
        isKamao: true,
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
        isPremium: true,
        tagsList: [
          "Part time",
          "22 openings",
          "Work from home",
        ],
        companyLogo: 'assets/images/png/uber.png',
      ),
    ];
    jobsList = [
      JobsList(
        jobsList: jobTilesList,
        title: "Recent Jobs",
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
      JobsList(
        jobsList: jobTilesList,
        title: "Delivery Jobs",
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
      JobsList(
        jobsList: jobTilesList,
        title: "Warehouse Jobs",
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
      JobsList(
        jobsList: jobTilesList,
        title: "Sales Jobs",
      ),
    ];
  }

  void onApply() {
    RxList<FilterModel> selectedFilters = RxList.empty(growable: true);
    for (var element in filtersList) {
      for (var e in element.filtersList) {
        if (e.isSelected.value) {
          selectedFilters.add(e);
        }
      }
    }
    appliedFiltersList
      ..clear()
      ..addAll(selectedFilters);
  }

  bool isFiltersEnabled() {
    bool isFilterEnabled = false;
    for (var element in filtersList) {
      for (var element in element.filtersList) {
        if (element.isSelected.value) {
          isFilterEnabled = true;
        }
      }
    }
    return isFilterEnabled;
  }

  void clearAllFilters({required clearAppliedFiltersAlso}) {
    for (var element in filtersList) {
      for (var element in element.filtersList) {
        element.isSelected.value = false;
      }
    }
    if (clearAppliedFiltersAlso) {
      appliedFiltersList.clear();
    }
  }

  bool isFiltersApplied() {
    for (var element in appliedFiltersList) {
      if (element.isSelected.value) {
        return true;
      }
    }
    return false;
  }
}
