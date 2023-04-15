import 'dart:io';

import 'package:get/get.dart';

class WebViewController extends GetxController {
  String urlToLoad = "";
  @override
  void onInit() {
    urlToLoad = Get.arguments;
    if (Platform.isAndroid) {
      // WebView.platform = AndroidWebView();
    }
    super.onInit();
  }
}
