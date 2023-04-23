import 'package:get/get.dart';
import 'package:kamao/app/modules/job_questions_page/models/questions_list_model.dart';

class JobQuestionsPageController extends GetxController {
  List<QuestionsListModel> questionsList = [];
  RxInt currentQuestionIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
    questionsList = [
      QuestionsListModel(
        question: "Which of the following do you have?",
        questionsList: [
          QuestionModel(
            question: "Two - wheeler vehicle",
            selectedOption: (-1).obs,
          ),
          QuestionModel(
            question: "Two - wheeler driving  license",
            selectedOption: (-1).obs,
          ),
        ],
      ),
      QuestionsListModel(
        question: "Which of the following do you have?",
        questionsList: [
          QuestionModel(
            question: "Helmet",
            selectedOption: (-1).obs,
          ),
          QuestionModel(
            question: "Smart Phone",
            selectedOption: (-1).obs,
          ),
          QuestionModel(
            question: "Delivery Box",
            selectedOption: (-1).obs,
          ),
          QuestionModel(
            question: "Delivery Jacket",
            selectedOption: (-1).obs,
          ),
        ],
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }
}
