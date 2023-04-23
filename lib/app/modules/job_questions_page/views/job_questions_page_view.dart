import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kamao/app/components/bottom_sheet/bottom_sheet_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/components/widgets/custom_app_bar.dart';
import 'package:kamao/app/modules/job_questions_page/views/questions_list_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';

import '../controllers/job_questions_page_controller.dart';

class JobQuestionsPageView extends GetView<JobQuestionsPageController> {
  const JobQuestionsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return onWillPop();
      },
      child: Scaffold(
        appBar: customAppBar(title: "Job Details"),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Obx(
            () => ListView(
              children: [
                const SizedBox(
                  height: 8,
                ),
                questionDetailsWidget(),
                questionsIndexWidget(),
                QuestionsListTile(
                  questionsListModel: controller
                      .questionsList[controller.currentQuestionIndex.value],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Obx(
          () => BottomSheetButton(
            isEnabled: isEnabled(),
            text: controller.questionsList.length ==
                    controller.currentQuestionIndex.value + 1
                ? "Submit"
                : "Next",
            onTap: () {
              if (controller.questionsList.length ==
                  controller.currentQuestionIndex.value + 1) {
                if (isSuccess()) {
                  Get.toNamed(Routes.APPLICATION_SUCCESS_PAGE);
                } else {
                  Get.toNamed(Routes.APPLICATION_REJECTED_PAGE);
                }
              } else {
                controller.currentQuestionIndex.value++;
              }
            },
          ),
        ),
      ),
    );
  }

  bool isSuccess() {
    return controller.questionsList.every((element) => element.questionsList
        .every((element) => element.selectedOption.value == 0));
  }

  bool onWillPop() {
    if (controller.currentQuestionIndex.value > 0) {
      controller.currentQuestionIndex.value--;
      return false;
    }
    return true;
  }

  bool isEnabled() {
    return !controller
        .questionsList[controller.currentQuestionIndex.value].questionsList
        .any((element) => element.selectedOption.value == -1);
  }

  Widget questionsIndexWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Question ${controller.currentQuestionIndex.value + 1}",
                style: CustomTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Kolors.secondarycolor,
                ),
              ),
              Text(
                "/${controller.questionsList.length}",
                style: CustomTextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Kolors.tertiarycolor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              ...indicatorsList(),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> indicatorsList() {
    return controller.questionsList
        .asMap()
        .map((index, element) {
          return MapEntry(index, indicatorTile(index));
        })
        .values
        .toList();
  }

  Widget indicatorTile(int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: index == 0 ? 0 : 5),
        height: 10,
        decoration: BoxDecoration(
          color: index <= controller.currentQuestionIndex.value
              ? Kolors.backgroundActionColor
              : Kolors.disabledButton,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Widget questionDetailsWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Color(0xffEC8B6B),
            Color(0xffED6F9D),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery Executive-Biker",
            style: CustomTextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Zomato • Mansarover, Jaipur",
            style: CustomTextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/png/icons/empty-wallet.png',
                height: 16,
                width: 16,
                color: Colors.white,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "₹15,000 - ₹30,000 per month ",
                style: CustomTextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Wrap(
            children: [
              tagText("Part time"),
              tagText("22 Openings"),
            ],
          ),
        ],
      ),
    );
  }

  Widget tagText(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Text(
        tag,
        style: CustomTextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
