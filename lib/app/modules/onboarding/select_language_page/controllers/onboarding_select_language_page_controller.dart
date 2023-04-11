import 'package:get/get.dart';

class OnboardingSelectLanguagePageController extends GetxController {
  RxString languageSelected = "".obs;
  bool isOnboardingPage = true;
  List<String> languagesList = [];
  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      isOnboardingPage = (Get.arguments);
    }

    if (isOnboardingPage) {
      languagesList = ["English", "Hinglish"];
    } else {
      languagesList = [
        "English",
        "Hinglish",
        "Odia",
        "Bengali",
        "Telugu",
        "Malayalam",
        "Hindi",
        "Punjabi"
      ];
    }
  }
}
