import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:kamao/app/components/text/bullet_list.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/milestone_widget.dart';
import 'package:kamao/app/modules/project_details_page/controllers/project_details_page_controller.dart';
import 'package:kamao/app/theme/colors.dart';

class ProjectBenefitsPage extends GetView<ProjectDetailsPageController> {
  const ProjectBenefitsPage({Key? key}) : super(key: key);

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
              milestoneModel: controller.projectModel.milestonesList,
            ),
            const BulletList(
              title: 'Benefits',
              bullets: [
                "Business Mastercard, with free transactions domestically and abroad.",
                "Easy in-app card control for setting card and transaction limits.",
                "Simple accounting and credit facilities for GST filing and auditing.",
                "Get current updates on your self-assessment Liability for the financial transparency of your business.",
                "Stay on top of your business Profit and Loss report.",
                "Automatic categorization of your transactions, for easy accounting.",
                "Instant invoice payment and creation.",
              ],
            ),
          ],
        ),
      ),
    );
  }
}
