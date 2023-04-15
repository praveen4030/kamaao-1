import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/image_tile_button.dart';

class AccountProfilePageAssetsDetailsController extends GetxController {
  List<ImageTileModel> assetsList = [];
  @override
  void onInit() {
    super.onInit();
    assetsList = [
      ImageTileModel(
        image: 'assets/images/png/bike1.png',
        title: 'Bike',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/bike2.png',
        title: 'E - Bike',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/car.png',
        title: 'Car',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/png/bicycle.png',
        title: 'Bicycle',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/png/android_mobile.png',
        title: 'Android Mobile',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/png/ios_mobile.png',
        title: 'IOS Mobile',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/Computer.png',
        title: 'Computer',
        isSelected: false.obs,
      ),
      ImageTileModel(
        image: 'assets/images/laptop.png',
        title: 'Laptop',
        isSelected: false.obs,
      ),
    ];
  }
}
