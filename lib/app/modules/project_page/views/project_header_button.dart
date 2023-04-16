import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

class ProjectHeaderButton extends StatelessWidget {
  final String text;
  final String icon;
  const ProjectHeaderButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          Routes.PROJECTS_LIST_PAGE,
          arguments: text.toLowerCase(),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Kolors.foundationLightBlue,
            ),
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              "assets/images/png/$icon.png",
              height: 46,
              width: 46,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: CustomTextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
