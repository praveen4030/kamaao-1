import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/onboarding/login_page/models/login_slides_model.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';

class SlideTile extends StatelessWidget {
  final LoginSlidesModel model;
  const SlideTile({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          model.image,
          height: 380,
          width: Get.width,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            model.title,
            textAlign: TextAlign.center,
            style: CustomTextStyle(
              color: Kolors.appDarkcolor,
              fontSize: 25,
              fontWeight: Constants.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            model.subTitle,
            textAlign: TextAlign.center,
            style: CustomTextStyle(
              color: Kolors.secondarycolor,
            ),
          ),
        ),
      ],
    );
  }
}
