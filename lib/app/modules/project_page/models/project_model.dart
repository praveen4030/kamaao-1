import 'package:kamao/app/modules/job_page/models/job_model.dart';

class ProjectModel {
  final String name;
  final String description;
  final String image;
  final bool isTrending;
  final int earnCoins;
  final int amount;
  final List<MilestoneModel> milestonesList;

  ProjectModel({
    required this.name,
    required this.description,
    required this.image,
    required this.isTrending,
    required this.earnCoins,
    required this.amount,
    required this.milestonesList,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      name: json['name'],
      description: json['description'],
      image: json['image'],
      isTrending: json['isTrending'],
      earnCoins: json['earnCoins'],
      amount: json['amount'],
      milestonesList: json['milestonesList'],
    );
  }
}
