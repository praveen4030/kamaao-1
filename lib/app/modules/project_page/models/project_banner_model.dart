import 'package:flutter/material.dart';

class ProjectBannerModel {
  final String title;
  final String description;
  final String image;
  final String buttonText;
  final Color color;
  final Function onTap;
  final Color buttonColor;

  ProjectBannerModel({
    required this.title,
    required this.description,
    required this.image,
    required this.buttonText,
    required this.color,
    required this.onTap,
    required this.buttonColor,
  });

  factory ProjectBannerModel.fromJson(Map<String, dynamic> json) {
    return ProjectBannerModel(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      buttonText: json['buttonText'],
      color: json['color'],
      onTap: json['onTap'],
      buttonColor: json['buttonColor'],
    );
  }
}
