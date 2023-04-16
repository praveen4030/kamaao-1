import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/constants.dart';
import 'package:kamao/app/utils/image_path.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileListTile extends StatelessWidget {
  final ProfileTileModel profileTileModel;
  const ProfileListTile({
    Key? key,
    required this.profileTileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        profileTileModel.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Kolors.seperatorLight,
          ),
          boxShadow: [
            BoxShadow(
              color: Kolors.boxShadowColor.withOpacity(0.07),
              spreadRadius: 0,
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 16,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        profileTileModel.icon,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  profileTileModel.text,
                                  style: CustomTextStyle(
                                    color: Kolors.secondarycolor,
                                    fontSize: 16,
                                    fontWeight: Constants.medium,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                if (profileTileModel.tag.isNotEmpty)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Kolors.backgroundAccent,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(32),
                                      ),
                                    ),
                                    child: Text(
                                      profileTileModel.tag.toUpperCase(),
                                      style: CustomTextStyle(
                                        color: Kolors.errorColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              "${profileTileModel.completed.toInt()}% completed",
                              style: CustomTextStyle(
                                color: Kolors.tertiarycolor,
                                fontSize: 12,
                                fontWeight: Constants.medium,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            LinearPercentIndicator(
                              lineHeight: 6,
                              padding: EdgeInsets.zero,
                              barRadius: const Radius.circular(37),
                              percent: profileTileModel.completed / 100,
                              backgroundColor: Kolors.backgroundInterfaceColor,
                              progressColor: Kolors.highlightcolor,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        ImagePath.icArRight,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTileModel {
  final Function onTap;
  final String text;
  final double completed;
  final String tag;
  final String icon;
  final bool isTrailingIcon;
  ProfileTileModel({
    required this.onTap,
    required this.text,
    required this.icon,
    this.completed = 0,
    this.tag = "",
    this.isTrailingIcon = true,
  });
}
