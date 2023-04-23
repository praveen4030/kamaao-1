import 'package:get/get.dart';
import 'package:kamao/app/modules/dashboard_page/controllers/dashboard_page_controller.dart';
import 'package:kamao/app/modules/job_page/controllers/job_page_controller.dart';
import 'package:kamao/app/modules/learn_page/controllers/learn_page_controller.dart';
import 'package:kamao/app/modules/project_page/controllers/project_page_controller.dart';
import 'package:kamao/app/modules/store_page/controllers/store_page_controller.dart';

import '../controllers/base_page_controller.dart';

class BasePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectPageController>(
      () => ProjectPageController(),
    );
    Get.lazyPut<DashboardPageController>(
      () => DashboardPageController(),
    );
    Get.lazyPut<LearnPageController>(
      () => LearnPageController(),
    );
    Get.lazyPut<JobPageController>(
      () => JobPageController(),
    );
    Get.lazyPut<StorePageController>(
      () => StorePageController(),
    );
    Get.lazyPut<BasePageController>(
      () => BasePageController(),
    );
  }
}
