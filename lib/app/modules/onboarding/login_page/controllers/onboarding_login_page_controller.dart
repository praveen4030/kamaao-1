import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/onboarding/login_page/models/login_slides_model.dart';
import 'package:kamao/app/utils/image_path.dart';

class OnboardingLoginPageController extends GetxController {
  CarouselController imageController = CarouselController();
  RxBool isNumberValidated = false.obs;
  RxBool isCheckBoxSelected = false.obs;
  RxInt currentSlide = 0.obs;
  List<LoginSlidesModel> introList = [
    LoginSlidesModel(
      title: "Search for Jobs and Gigs",
      subTitle: "Get Full Time, Part Time jobs in top companies.",
      image: ImagePath.imgFirst,
    ),
    LoginSlidesModel(
      title: "Refer Jobs & Gigs and Earn Money",
      subTitle: "You can share Kamaao jobs and earn rewards.",
      image: ImagePath.imgSecond,
    ),
    LoginSlidesModel(
      title: "Refer Financial Projects and Earn Money",
      subTitle:
          "Refer products like: Demat A/c, Saving A/c, Credit Card, Personal Loan, Credit Line etc. ",
      image: ImagePath.imgThird,
    ),
  ];
  TextEditingController numberTEC = TextEditingController();
}
