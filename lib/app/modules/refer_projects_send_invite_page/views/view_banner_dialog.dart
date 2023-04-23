import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/refer_projects_send_invite_page/controllers/refer_projects_send_invite_page_controller.dart';
import 'package:kamao/app/theme/colors.dart';

class ViewBannerDialog extends StatelessWidget {
  final BannerModel bannerModel;
  const ViewBannerDialog({
    Key? key,
    required this.bannerModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  bannerModel.text,
                  style: CustomTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.close,
                  size: 16,
                  color: Kolors.primarycolor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            bannerModel.image,
            height: 185,
            width: Get.width,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
