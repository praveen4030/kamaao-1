import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/bindings/account_profile_page_binding.dart';
import 'package:kamao/app/modules/ekyc_page/bindings/ekyc_page_binding.dart';
import 'package:kamao/app/modules/onboarding/add_user_details_page/bindings/onboarding_add_user_details_page_binding.dart';
import 'package:kamao/app/modules/onboarding/select_language_page/bindings/onboarding_select_language_page_binding.dart';
import 'package:kamao/app/modules/onboarding/select_language_page/views/onboarding_select_language_page_view.dart';
import 'package:kamao/app/modules/splash_page/bindings/splash_page_binding.dart';
import 'package:kamao/app/routes/app_pages.dart';

import 'app/theme/colors.dart';

Future<void> main({bool isRunningIntegrationTests = false}) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

//add commend to push test this with build number
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      initialBinding: OnboardingSelectLanguagePageBinding(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      title: "Kamaao",
      theme: ThemeData(
        scaffoldBackgroundColor: Kolors.whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Kolors.whiteColor,
          iconTheme: IconThemeData(
            color: Kolors.appDarkTextColor,
          ),
        ),
      ),
    );
  }
}
