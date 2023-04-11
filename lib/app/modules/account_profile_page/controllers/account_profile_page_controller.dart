import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/account_settings/account_settings_tile.dart';
import 'package:kamao/app/modules/account_profile_page/profile_page/profile_list_tile.dart';
import 'package:kamao/app/modules/account_profile_page/views/user_details_model.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/utils/image_path.dart';

class AccountProfilePageController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;
  List<AccountSettingModel> accountSettingList = [];
  List<ProfileTileModel> profileList = [];
  late UserDetailsModel userDetailsModel;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    userDetailsModel = UserDetailsModel(
      name: "John Doe",
      email: "Aditya1212@gmail.com",
      phone: "9876666666",
      gender: "Male",
      dob: DateTime(2001),
      image:
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg',
      address: "Vaishali nagar, Jaipur",
      experience: "2 years",
      education: "12th pass",
    );
    profileList = [
      ProfileTileModel(
        text: "E - KYC",
        completed: 60,
        icon: ImagePath.icFirst,
        tag: "KYC pending",
        onTap: () {
          Get.toNamed(Routes.EKYC_PAGE);
        },
      ),
      ProfileTileModel(
        text: "My Skills",
        completed: 10,
        icon: ImagePath.icThird,
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_SKILL_DETAILS);
        },
      ),
      ProfileTileModel(
        text: "Job Location",
        completed: 10,
        icon: ImagePath.icFour,
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_LOCATION_DETAILS);
        },
      ),
      ProfileTileModel(
        text: "Education Details",
        completed: 30,
        icon: ImagePath.icSeven,
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_EDUCATION_DETAILS);
        },
      ),
      ProfileTileModel(
        text: "My Assets ",
        completed: 60,
        icon: ImagePath.icSix,
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_ASSETS_DETAILS);
        },
      ),
      ProfileTileModel(
        text: "My Documents",
        completed: 60,
        icon: 'assets/images/png/profile_documents.png',
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_DOCUMENT_DETAILS);
        },
      ),
    ];
    accountSettingList = [
      AccountSettingModel(
        text: "Language",
        icon: ImagePath.lang,
        onTap: () {
          Get.toNamed(Routes.ONBOARDING_SELECT_LANGUAGE_PAGE, arguments: false);
        },
      ),
      AccountSettingModel(
        text: "Payment Settings",
        icon: ImagePath.payment,
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_PAYMENT_SETTINGS);
        },
      ),
      AccountSettingModel(
        text: "FAQ",
        icon: ImagePath.faq,
        onTap: () {
          Get.toNamed(Routes.ACCOUNT_PROFILE_PAGE_HELP_PAGE);
        },
      ),
      AccountSettingModel(
        text: "Term of Services",
        icon: ImagePath.terms,
        onTap: () {},
      ),
      AccountSettingModel(
        text: "Privacy Policy",
        icon: ImagePath.privacy,
        onTap: () {},
      ),
      AccountSettingModel(
          text: "Logout",
          icon: ImagePath.logout,
          onTap: () {},
          isTrailingIcon: false),
    ];
  }
}
