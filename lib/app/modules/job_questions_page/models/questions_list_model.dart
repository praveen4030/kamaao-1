import 'package:get/get.dart';

class QuestionsListModel {
  final String question;
  final List<QuestionModel> questionsList;

  QuestionsListModel({
    required this.questionsList,
    required this.question,
  });
}

class QuestionModel {
  final String question;
  final RxInt selectedOption;

  QuestionModel({
    required this.question,
    required this.selectedOption,
  });
}
