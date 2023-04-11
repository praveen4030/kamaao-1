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
      subTitle: "You can share these jobs and in exchange earn rewards",
      image: ImagePath.imgSecond,
    ),
    LoginSlidesModel(
      title: "Refer Financial Projects and Earn Money",
      subTitle: "Complete Freelance Projects & generate a Side Income",
      image: ImagePath.imgThird,
    ),
  ];
  TextEditingController numberTEC = TextEditingController();
}
