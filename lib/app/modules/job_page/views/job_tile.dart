import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_divider.dart';
import 'package:kamao/app/modules/job_page/models/job_model.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

class JobTile extends StatelessWidget {
  final JobModel jobModel;
  final bool isCard;
  const JobTile({
    Key? key,
    required this.jobModel,
    this.isCard = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(
        //   Routes.APPLICATION_REJECTED_PAGE,
        // );
        Get.toNamed(Routes.JOB_DETAILS_PAGE, arguments: jobModel);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: isCard ? 8 : 0),
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 4),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  jobModel.companyLogo,
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
                      Row(
                        children: [
                          Text(
                            jobModel.company,
                            style: CustomTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Kolors.tertiarycolor,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          if (jobModel.isVerified)
                            tag(
                              text: 'VERIFIED',
                              color: const Color(0xFF008CC3),
                              textColor: const Color(0xFFE8F9FF),
                            )
                          else if (jobModel.isKamao)
                            kamaoTag()
                          else if (jobModel.isPremium)
                            tag(
                              text: 'PREMIUM',
                              color: const Color(0xFFFFF6C4),
                              textColor: const Color(0xFFF8BB34),
                            )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        jobModel.title,
                        style: CustomTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomDivider(
              color: Kolors.seperatorLight,
              height: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        jobModel.salary,
                        textAlign: TextAlign.end,
                        style: CustomTextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Kolors.highlightcolor,
                        ),
                      ),
                      Text(
                        '/month',
                        style: CustomTextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Kolors.secondarycolor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/png/icons/location.png',
                        height: 10,
                        width: 10,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        jobModel.location,
                        textAlign: TextAlign.end,
                        style: CustomTextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Kolors.tertiarycolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            tagsList(),
          ],
        ),
      ),
    );
  }

  Widget tagsList() {
    return Wrap(
      children: [
        ...jobModel.tagsList
            .map(
              (e) => tagContainer(e),
            )
            .toList(),
      ],
    );
  }

  Widget tag({
    required Color color,
    required Color textColor,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: color,
      ),
      child: Text(
        text,
        style: CustomTextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }

  Widget kamaoTag() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xffFFCFD3),
            Color(0xffFFD9A4),
          ],
        ),
      ),
      child: Text(
        "KAMAAO",
        style: CustomTextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: const Color(0xffE16428),
        ),
      ),
    );
  }

  Widget tagContainer(String tag) {
    return Container(
      margin: const EdgeInsets.only(right: 8, bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Kolors.foundationLightBlue,
      ),
      child: Text(
        tag.toUpperCase(),
        style: CustomTextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: Kolors.foundationDarkBlue,
        ),
      ),
    );
  }
}
