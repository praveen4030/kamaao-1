import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
// #docregion platform_imports
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class WebWidget extends StatefulWidget {
  final String webViewUrl;
  final bool isShowingLoader;
  const WebWidget({
    Key? key,
    required this.isShowingLoader,
    required this.webViewUrl,
  }) : super(key: key);

  @override
  State<WebWidget> createState() => _WebWidgetState();
}

class _WebWidgetState extends State<WebWidget> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features
    controller
      ..enableZoom(true)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (val) {
            if (!widget.isShowingLoader) return;
          },
          onPageFinished: (val) {
            log("URL :$val");
          },
          onProgress: (progress) {
            if (!widget.isShowingLoader) return;
            if (progress > 30) {}
          },
          onWebResourceError: (error) {
            if (!widget.isShowingLoader) return;
          },
          onNavigationRequest: (NavigationRequest req) {
            log("URL :${req.url}"); //
            if (req.url.startsWith("https://0xppl.com/")) {
              var uri = Uri.dataFromString(req.url); //converts string to a uri

              Map<String, String> params = uri.queryParameters;
              Future.delayed(
                const Duration(seconds: 1),
                () {
                  Get.back(result: params);
                },
              );
              return NavigationDecision.prevent;
            } else {
              return NavigationDecision.navigate;
            }
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.webViewUrl));

    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(
      controller: _controller,
    );
  }
}
