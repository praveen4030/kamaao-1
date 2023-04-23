import 'package:get/get.dart';

class FiltersListModel {
  final String title;
  final List<FilterModel> filtersList;

  FiltersListModel({
    required this.title,
    required this.filtersList,
  });
}

class FilterModel {
  final String text;
  final RxBool isSelected;
  final String? image;

  FilterModel({
    required this.text,
    required this.isSelected,
    this.image,
  });
}
