import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/image_tile_button.dart';

class AccountProfilePageSkillDetailsController extends GetxController {
  RxInt itemSelected = (-1).obs;
  List<ImageTileModel> skillsList = [];
  @override
  void onInit() {
    super.onInit();
    skillsList = [
      ImageTileModel(
          isSelected: false.obs,
          image: 'assets/images/Saly-3.png',
          title: 'Bike Driving'),
      ImageTileModel(
          isSelected: false.obs,
          image: 'assets/images/png/laptop_skill.png',
          title: 'Laptop'),
      ImageTileModel(
          isSelected: false.obs,
          image: 'assets/images/png/car_driving_skill.png',
          title: 'Car Driving'),
      ImageTileModel(
          isSelected: false.obs,
          image: 'assets/images/dashboard-growth 1.png',
          title: 'Sales & Marketing'),
      ImageTileModel(
          isSelected: false.obs,
          image: 'assets/images/png/smart_phone.png',
          title: 'Smart phone'),
      ImageTileModel(
          isSelected: false.obs,
          image: 'assets/images/png/english_speaking.png',
          title: 'English Speaking'),
    ];
  }
}
