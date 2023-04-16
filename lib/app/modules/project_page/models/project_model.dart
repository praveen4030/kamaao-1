class ProjectModel {
  final String name;
  final String description;
  final String image;
  final bool isTrending;
  final int earnCoins;
  final int amount;

  ProjectModel({
    required this.name,
    required this.description,
    required this.image,
    required this.isTrending,
    required this.earnCoins,
    required this.amount,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      name: json['name'],
      description: json['description'],
      image: json['image'],
      isTrending: json['isTrending'],
      earnCoins: json['earnCoins'],
      amount: json['amount'],
    );
  }
}
