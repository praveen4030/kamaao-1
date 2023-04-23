import 'package:get/get.dart';
import 'package:kamao/app/modules/refer_projects_page/models/refer_model.dart';

class ReferProjectsPageController extends GetxController {
  late ReferModel referModel;
  late bool isProjectRefer = true;
  @override
  void onInit() {
    super.onInit();
    isProjectRefer = Get.arguments ?? true;
    if (isProjectRefer) {
      referModel = getProjectModel();
    } else {
      referModel = getJobModel();
    }
  }

  ReferModel getJobModel() {
    return ReferModel(
      image: 'assets/images/png/refer_job.png',
      title: 'Delivery Executive-Biker',
      subtitle: '₹15,000 - ₹30,000',
      pointsToEarn: '100',
      listModel: [
        ListModel(
          title: "Share link to your friends",
          subtitle:
              "Share link to your friends which might be suitable for them",
          icon: "assets/images/png/announce.png",
        ),
        ListModel(
          title: "Apply for the loan",
          subtitle: "Ask them to apply for the loan through your link",
          icon: "assets/images/png/apply_loan.png",
        ),
        ListModel(
          title: "Get Rewarded",
          subtitle: "Once the account is opened you get rewarded",
          icon: "assets/images/png/get_rewarded.png",
        ),
      ],
    );
  }

  ReferModel getProjectModel() {
    return ReferModel(
      image: 'assets/images/png/refer_projects.png',
      title: 'Current Account Opening',
      subtitle: 'SBI',
      pointsToEarn: '100',
      listModel: [
        ListModel(
          title: "Share link to your friends",
          subtitle:
              "Share link to your friends which might be suitable for them",
          icon: "assets/images/png/announce.png",
        ),
        ListModel(
          title: "Apply for the loan",
          subtitle: "Ask them to apply for the loan through your link",
          icon: "assets/images/png/apply_loan.png",
        ),
        ListModel(
          title: "Get Rewarded",
          subtitle: "Once the account is opened you get rewarded",
          icon: "assets/images/png/get_rewarded.png",
        ),
      ],
    );
  }
}
