import 'package:get/get.dart';
import 'package:kamao/app/routes/app_pages.dart';

class SplashPageController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    navigate();
  }

  navigate() async {
    await Future.delayed(const Duration(seconds: 1));
    Get.offNamed(Routes.ONBOARDING_SELECT_LANGUAGE_PAGE);
  }
}
