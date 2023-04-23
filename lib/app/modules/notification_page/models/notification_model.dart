class NotificationModel {
  final String title;
  final String body;
  final String image;
  final String dateTime;
  final bool isActive;

  NotificationModel({
    required this.title,
    required this.body,
    required this.image,
    required this.dateTime,
    required this.isActive,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      title: json['title'],
      body: json['body'],
      image: json['image'],
      dateTime: json['date'],
      isActive: json['isActive'],
    );
  }
}
