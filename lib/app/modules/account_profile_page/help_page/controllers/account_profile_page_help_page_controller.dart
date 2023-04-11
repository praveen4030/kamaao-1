import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/help_page/views/faq_tile.dart';

class AccountProfilePageHelpPageController extends GetxController {
  List<FaqTileModel> faqList = [];
  @override
  void onInit() {
    super.onInit();
    faqList = [
      FaqTileModel(
        isExpanded: false.obs,
        title: "How to redeem points?",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
      ),
      FaqTileModel(
        isExpanded: false.obs,
        title: "How to refer jobs to your friends via whatsapp",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
      ),
      FaqTileModel(
        isExpanded: false.obs,
        title: "How do i complete my profile",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
      ),
      FaqTileModel(
        isExpanded: false.obs,
        title: "Steps to earn more coins?",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
      ),
      FaqTileModel(
        isExpanded: false.obs,
        title: "How to upload documents?",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
      ),
      FaqTileModel(
        isExpanded: false.obs,
        title: "How to change profile details?",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
      ),
      FaqTileModel(
        isExpanded: false.obs,
        title: "How to get customer support?",
        subtitle:
            "You can either redeem your points from the redeem coins section you by clicking on my earnings",
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
