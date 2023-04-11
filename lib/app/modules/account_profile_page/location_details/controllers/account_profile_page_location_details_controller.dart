import 'package:get/get.dart';

class AccountProfilePageLocationDetailsController extends GetxController {
  List<String> locationsList = [];
  RxList<String> selectedLocation = RxList.empty(growable: true);
  @override
  void onInit() {
    super.onInit();
    locationsList = [
      "Vaishali Nagar,Jaipur, Rajasthan,India 302012",
      "Sitapura,Jaipur, Rajasthan,India 302123",
      "Pratap nagar,Jaipur, Rajasthan,India 309398",
      "Manasarovar,Jaipur, Rajasthan,India 302033",
    ];
  }
}
