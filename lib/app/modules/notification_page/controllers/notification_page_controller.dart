import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/modules/notification_page/models/notification_model.dart';

class NotificationPageController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;
  List<NotificationModel> notificationsList = [];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 4, vsync: this);
    notificationsList = [
      NotificationModel(
        title: "Order Delivered",
        body:
            "Your order of puma jacket orange, order no. : 25479452 will be delivered today by 8 PM",
        dateTime: "1 day",
        image: "assets/images/png/temp/notification_dummy1.png",
        isActive: false,
      ),
      NotificationModel(
        title: "New Tutorial available",
        body:
            "New video on how to apply and refer kamaao job has been posted on our channel",
        dateTime: "1 day",
        image: "assets/images/png/temp/notification_dummy2.png",
        isActive: true,
      ),
      NotificationModel(
        title: "5 new job in Deliver - Biker",
        body: "new jobs available for Delivery ececutive bike in jaipur",
        dateTime: "2 day",
        image: "assets/images/png/temp/notification_dummy3.png",
        isActive: true,
      ),
      NotificationModel(
        title: "Order Delivered",
        body:
            "Your order of puma jacket orange, order no. : 25479452 will be delivered today by 8 PM",
        dateTime: "2 day",
        image: "assets/images/png/temp/notification_dummy1.png",
        isActive: false,
      ),
      NotificationModel(
        title: "New Tutorial available",
        body:
            "New video on how to apply and refer kamaao job has been posted on our channel",
        dateTime: "3 day",
        image: "assets/images/png/temp/notification_dummy2.png",
        isActive: false,
      ),
      NotificationModel(
        title: "5 new job in Deliver - Biker",
        body: "new jobs available for Delivery ececutive bike in jaipur",
        dateTime: "5 day",
        image: "assets/images/png/temp/notification_dummy3.png",
        isActive: false,
      ),
    ];
  }
}
