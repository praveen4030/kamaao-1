import 'package:get/get.dart';

import '../controllers/ekyc_page_take_document_photo_controller.dart';

class EkycPageTakeDocumentPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EkycPageTakeDocumentPhotoController>(
      () => EkycPageTakeDocumentPhotoController(),
    );
  }
}
