import 'package:flutter/material.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/project_page/models/project_banner_model.dart';
import 'package:kamao/app/theme/colors.dart';

class ProjectBannerTile extends StatelessWidget {
  final ProjectBannerModel projectBannerModel;
  const ProjectBannerTile({Key? key, required this.projectBannerModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: projectBannerModel.color),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectBannerModel.title,
                  maxLines: 2,
                  style: CustomTextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  projectBannerModel.description,
                  style: CustomTextStyle(
                    fontSize: 14,
                    color: Kolors.secondarycolor,
                  ),
                ),
                const Spacer(),
                BorderButton(
                  text: projectBannerModel.buttonText,
                  onTap: projectBannerModel.onTap,
                  color: projectBannerModel.buttonColor,
                  icon: 'assets/images/png/icons/arrow-right.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/images/png/${projectBannerModel.image}.png",
          ),
        ],
      ),
    );
  }
}
