import 'package:get/get.dart';

class AccountProfilePageEducationDetailsController extends GetxController {
  RxString educationSelected = "".obs;
  List<String> educationList = [];
  @override
  void onInit() {
    super.onInit();
    educationList = [
      "Below 10 Pass",
      "10th pass",
      "12th Pass",
      "ITI/ Diploma/ Certificate ",
      "Graduate & above",
      "Postgraduate & above",
    ];
  }
}
