import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/job_questions_page/models/questions_list_model.dart';
import 'package:kamao/app/modules/job_questions_page/views/question_tile.dart';
import 'package:kamao/app/theme/colors.dart';

class QuestionsListTile extends StatelessWidget {
  final QuestionsListModel questionsListModel;
  const QuestionsListTile({
    Key? key,
    required this.questionsListModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionsListModel.question,
          style: CustomTextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Kolors.secondarycolor,
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: questionsListModel.questionsList.length,
          itemBuilder: (context, index) {
            return QuestionTile(
              questionModel: questionsListModel.questionsList[index],
            );
          },
        ),
      ],
    );
  }
}
