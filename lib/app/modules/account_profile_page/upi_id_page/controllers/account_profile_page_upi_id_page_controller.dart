import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/details_tile.dart';

class AccountProfilePageUpiIdPageController extends GetxController {
  List<DetailsTileModel> upiIdsList = [];
  @override
  void onInit() {
    super.onInit();
    upiIdsList = [
      DetailsTileModel(
        title: "9858965847@upi",
        subtitle: "Dimpal Gidwani",
        tag: "My UPI ID",
        trailingText: "IDFC First Bank",
      ),
      DetailsTileModel(
        title: "9858965847@upi",
        subtitle: "Dimpal Gidwani",
        tag: "My UPI ID",
        trailingText: "IDFC First Bank",
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
