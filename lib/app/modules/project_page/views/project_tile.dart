import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/icon_tag.dart';
import 'package:kamao/app/modules/project_page/models/project_model.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

class ProjectTile extends StatelessWidget {
  final ProjectModel projectModel;
  final bool isCard;
  const ProjectTile({
    Key? key,
    required this.projectModel,
    this.isCard = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.PROJECT_DETAILS_PAGE, arguments: projectModel);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: isCard ? 8 : 0),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isCard ? 8 : 0),
          color: Colors.white,
          boxShadow: !isCard
              ? []
              : [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 8,
                    color: Kolors.boxShadowColor.withOpacity(0.07),
                  )
                ],
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  projectModel.image,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectModel.name,
                        style: CustomTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Kolors.tertiarycolor,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        projectModel.description,
                        style: CustomTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Earn Upto",
                        textAlign: TextAlign.end,
                        style: CustomTextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Kolors.tertiarycolor,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "₹${projectModel.amount}",
                        textAlign: TextAlign.end,
                        style: CustomTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Kolors.highlightcolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                IconTag(
                  text: "EARN ${projectModel.earnCoins} COINS",
                  image: "assets/images/imgRupp.png",
                  bgColor: const Color(0xffFFF9EC),
                  textColor: const Color(0xffDB9900),
                ),
                const SizedBox(
                  width: 3,
                ),
                if (projectModel.isTrending)
                  const IconTag(
                    text: "TRENDING",
                    image: "assets/images/img_aag.png",
                    bgColor: Color(0xffE8F9FF),
                    textColor: Color(0xff33A3CF),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
