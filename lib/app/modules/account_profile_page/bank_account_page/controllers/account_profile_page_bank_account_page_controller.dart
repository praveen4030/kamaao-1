import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/details_tile.dart';

class AccountProfilePageBankAccountPageController extends GetxController {
  List<DetailsTileModel> bankAccountsList = [];

  @override
  void onInit() {
    super.onInit();
    bankAccountsList = [
      DetailsTileModel(
        title: "9258 5895 5588 5454",
        subtitle: "Dimpal Gidwani",
        subtitle2: "IFSC Code - IDFB0060261",
        tag: "Saving Account",
        trailingText: "IDFC First Bank",
      ),
      DetailsTileModel(
        title: "9258 5895 5588 5454",
        subtitle: "Dimpal Gidwani",
        subtitle2: "IFSC Code - IDFB0060261",
        tag: "Saving Account",
        trailingText: "IDFC First Bank",
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
