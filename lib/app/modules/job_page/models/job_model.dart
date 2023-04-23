class JobModel {
  final String title;
  final String location;
  final String salary;
  final String company;
  final String companyLogo;
  final List<String> tagsList;
  final bool isPremium;
  final bool isVerified;
  final bool isKamao;
  final List<MilestoneModel> milestonesList;

  JobModel({
    required this.title,
    required this.location,
    required this.salary,
    required this.company,
    required this.companyLogo,
    required this.tagsList,
    this.isKamao = false,
    this.isPremium = false,
    this.isVerified = false,
    required this.milestonesList,
  });
}

class MilestoneModel {
  final String title;
  final String description;
  final String amount;
  final String milestoneValue;

  MilestoneModel({
    required this.title,
    required this.description,
    required this.amount,
    required this.milestoneValue,
  });
}
