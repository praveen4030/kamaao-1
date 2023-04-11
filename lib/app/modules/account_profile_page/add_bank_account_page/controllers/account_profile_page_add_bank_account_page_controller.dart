import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AccountProfilePageAddBankAccountPageController extends GetxController {
  TextEditingController accountNumberTEC = TextEditingController();
  TextEditingController ifscCodeTEC = TextEditingController();
  TextEditingController accountHolderNameTEC = TextEditingController();
  TextEditingController branchNameTEC = TextEditingController();

  RxString accountNumber = "".obs;
  RxString ifscCode = "".obs;
  RxString accountHolderName = "".obs;
  RxString branchName = "".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
