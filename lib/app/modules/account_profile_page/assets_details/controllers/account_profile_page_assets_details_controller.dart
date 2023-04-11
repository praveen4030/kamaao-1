import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/image_tile_button.dart';

class AccountProfilePageAssetsDetailsController extends GetxController {
  RxInt itemSelected = (-1).obs;
  List<ImageTileModel> assetsList = [];
  @override
  void onInit() {
    super.onInit();
    assetsList = [
      ImageTileModel(image: 'assets/images/png/bike1.png', title: 'Bike'),
      ImageTileModel(image: 'assets/images/bike2.png', title: 'E - Bike'),
      ImageTileModel(image: 'assets/images/car.png', title: 'Car'),
      ImageTileModel(image: 'assets/images/png/bicycle.png', title: 'Bicycle'),
      ImageTileModel(
          image: 'assets/images/png/android_mobile.png',
          title: 'Android Mobile'),
      ImageTileModel(
          image: 'assets/images/png/ios_mobile.png', title: 'IOS Mobile'),
      ImageTileModel(image: 'assets/images/Computer.png', title: 'Computer'),
      ImageTileModel(image: 'assets/images/laptop.png', title: 'Laptop'),
    ];
  }
}
