import 'package:get/get.dart';

class ReferProjectsSendInvitePageController extends GetxController {
  List<BannerModel> bannerImagesList = [];
  @override
  void onInit() {
    super.onInit();
    bannerImagesList = [
      BannerModel(
        image: 'assets/images/png/au_small_finance_bank.png',
        text: 'AU Small Finance Bank',
      ),
      BannerModel(
        image: 'assets/images/png/collateral_2.png',
        text: 'Banner 2',
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class BannerModel {
  String image;
  String text;
  BannerModel({required this.image, required this.text});
}
