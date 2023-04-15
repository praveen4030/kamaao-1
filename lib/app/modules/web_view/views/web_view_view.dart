import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/web_view/views/web_view_widget.dart';

import '../controllers/web_view_controller.dart';

class WebViewView extends GetView<WebViewController> {
  const WebViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: ""),
      body: Stack(
        children: [
          WebWidget(
            isShowingLoader: true,
            webViewUrl: controller.urlToLoad,
          ),
        ],
      ),
    );
  }
}
