class ReferModel {
  final String image;
  final String title;
  final String subtitle;
  final String pointsToEarn;
  final List<ListModel> listModel;

  ReferModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.pointsToEarn,
    required this.listModel,
  });
}

class ListModel {
  final String icon;
  final String title;
  final String subtitle;

  ListModel({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}
