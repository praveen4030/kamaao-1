import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/transfer_to_bank_page/views/choose_bank_tile.dart';
import 'package:kamao/app/utils/image_path.dart';

class AccountProfilePageTransferToBankPageController extends GetxController {
  RxInt bankSelectedIndex = 0.obs;
  List<BankModel> banksList = [];
  @override
  void onInit() {
    super.onInit();
    banksList = [
      BankModel(
        image: ImagePath.imgSbi,
        bank: "State Bank Of India",
        accountNo: "xx0883",
      ),
      BankModel(
        image: ImagePath.imgIdfc,
        bank: "IDFC First Bank",
        accountNo: "xx5896",
      ),
    ];
  }
}
