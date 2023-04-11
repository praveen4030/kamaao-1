import 'dart:io';

import 'package:get/get.dart';
import 'package:kamao/app/components/buttons/image_upload_tile_button.dart';

class AccountProfilePageDocumentDetailsController extends GetxController {
  RxInt itemSelected = (-1).obs;
  List<ImageUploadTileModel> documentsList = [];
  @override
  void onInit() {
    super.onInit();
    documentsList = [
      ImageUploadTileModel(
        image: 'assets/images/png/aadhar_card_icon.png',
        title: 'Aadhar Card',
        buttonFront: "Upload Front Side",
        buttonBack: "Upload Back Side",
        fileFront: Rxn<File>(),
        fileBack: Rxn<File>(),
      ),
      ImageUploadTileModel(
        image: 'assets/images/png/bank_pass_book.png',
        title: 'Bank Pass book',
        buttonFront: "Upload Front Side",
        fileFront: Rxn<File>(),
        fileBack: Rxn<File>(),
      ),
      ImageUploadTileModel(
        image: 'assets/images/png/cheque.png',
        title: 'Cheque',
        buttonFront: "Upload Front Side",
        fileFront: Rxn<File>(),
        fileBack: Rxn<File>(),
      ),
      ImageUploadTileModel(
        image: 'assets/images/png/bank_statement.png',
        title: 'Bank Statement',
        buttonFront: "Upload Front Side",
        fileFront: Rxn<File>(),
        fileBack: Rxn<File>(),
      ),
      ImageUploadTileModel(
        image: 'assets/images/png/license.png',
        title: 'Truck Driving License',
        buttonFront: "Upload Front Side",
        buttonBack: "Upload Back Side",
        fileFront: Rxn<File>(),
        fileBack: Rxn<File>(),
      ),
      ImageUploadTileModel(
        image: 'assets/images/png/license.png',
        title: 'TR License',
        buttonFront: "Upload Front Side",
        buttonBack: "Upload Back Side",
        fileFront: Rxn<File>(),
        fileBack: Rxn<File>(),
      ),
    ];
  }
}
