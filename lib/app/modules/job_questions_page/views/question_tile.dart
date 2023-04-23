import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/job_questions_page/models/questions_list_model.dart';
import 'package:kamao/app/theme/colors.dart';

class QuestionTile extends StatelessWidget {
  final QuestionModel questionModel;
  const QuestionTile({
    Key? key,
    required this.questionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionModel.question,
            style: CustomTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Kolors.secondarycolor,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Obx(
            () => Row(
              children: [
                optionWidget(
                  "Yes",
                  questionModel.selectedOption.value == 0,
                  0,
                ),
                const SizedBox(
                  width: 32,
                ),
                optionWidget(
                  "No",
                  questionModel.selectedOption.value == 1,
                  1,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget optionWidget(
    String option,
    bool isSelected,
    int index,
  ) {
    return Expanded(
      child: BorderButton(
        height: 40,
        text: option,
        onTap: () {
          if (isSelected) {
            questionModel.selectedOption.value = -1;
          } else {
            questionModel.selectedOption.value = index;
          }
        },
        color:
            isSelected ? Kolors.backgroundActionColor : Kolors.disabledButton,
        bgColor:
            isSelected ? Kolors.integrfaceInputBg : Kolors.backgroundSecondary,
        textColor: isSelected ? Kolors.highlightcolor : Kolors.primarycolor,
        borderRadius: 4,
      ),
    );
  }
}
