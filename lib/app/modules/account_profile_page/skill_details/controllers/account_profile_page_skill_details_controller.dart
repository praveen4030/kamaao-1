import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/image_tile_button.dart';

class AccountProfilePageSkillDetailsController extends GetxController {
  RxInt itemSelected = (-1).obs;
  List<ImageTileModel> skillsList = [];
  @override
  void onInit() {
    super.onInit();
    skillsList = [
      ImageTileModel(image: 'assets/images/Saly-3.png', title: 'Bike Driving'),
      ImageTileModel(
          image: 'assets/images/png/laptop_skill.png', title: 'Laptop'),
      ImageTileModel(
          image: 'assets/images/png/car_driving_skill.png',
          title: 'Car Driving'),
      ImageTileModel(
          image: 'assets/images/dashboard-growth 1.png',
          title: 'Sales & Marketing'),
      ImageTileModel(
          image: 'assets/images/png/smart_phone.png', title: 'Smart phone'),
      ImageTileModel(
          image: 'assets/images/png/english_speaking.png',
          title: 'English Speaking'),
    ];
  }
}
