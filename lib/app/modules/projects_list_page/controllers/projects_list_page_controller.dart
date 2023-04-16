import 'package:get/get.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';
import 'package:kamao/app/utils/image_path.dart';

class ProjectsListPageController extends GetxController {
  List<ProjectModel> projectList = [];
  List<String> buttonsList = [
    "All",
    "Online Sellers",
    "Restaurant & Retail",
  ];
  RxInt selectedIndex = 0.obs;
  String category = "";
  @override
  void onInit() {
    super.onInit();
    category = Get.arguments;
    projectList = [
      ProjectModel(
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: true,
        earnCoins: 300,
        amount: 800,
      ),
      ProjectModel(
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: false,
        earnCoins: 200,
        amount: 500,
      ),
      ProjectModel(
        name: "SBI",
        description: "Demat account opening",
        image: ImagePath.imgSbi,
        isTrending: true,
        earnCoins: 300,
        amount: 800,
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
