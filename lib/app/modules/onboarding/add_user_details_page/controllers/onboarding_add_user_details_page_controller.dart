import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OnboardingAddUserDetailsPageController extends GetxController {
  TextEditingController nameTEC = TextEditingController();
  TextEditingController dobTEC = TextEditingController();

  RxString genderSelected = "".obs;
  Rxn<DateTime> dateOfBirth = Rxn<DateTime>();
  Rxn<File> imageSelected = Rxn<File>();
  TextEditingController emailTEC = TextEditingController();
  TextEditingController locationTEC = TextEditingController();
  RxBool isFinalStep = false.obs;
  final formKey = GlobalKey<FormState>();
  RxString nameChanged = "".obs;
  RxString emailChanged = "".obs;
  RxString locationChanged = "".obs;

  Future pickImage(ImageSource gallery) async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return;
      final imageTemporary = File(image.path);
      imageSelected.value = imageTemporary;
    } on Exception catch (e) {
      log('Failed to pick image:$e');
    }
  }

  bool isButtonEnabled() {
    if (isFinalStep.value &&
        locationChanged.isNotEmpty &&
        emailChanged.isNotEmpty) {
      return true;
    }
    if (nameChanged.isNotEmpty &&
        genderSelected.value.isNotEmpty &&
        dateOfBirth.value != null) {
      return true;
    }
    return false;
  }
}
