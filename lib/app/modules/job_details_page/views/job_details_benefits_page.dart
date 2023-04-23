import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/milestone_widget.dart';
import 'package:kamao/app/modules/job_details_page/controllers/job_details_page_controller.dart';
import 'package:kamao/app/theme/colors.dart';

class JobDetailsBenefitsPage extends GetView<JobDetailsPageController> {
  const JobDetailsBenefitsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Kolors.integrfaceInputBg,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Kamao Benefits',
                style: CustomTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            MilestoneWidget(
              milestoneModel: controller.jobModel.milestonesList,
            ),
          ],
        ),
      ),
    );
  }
}
