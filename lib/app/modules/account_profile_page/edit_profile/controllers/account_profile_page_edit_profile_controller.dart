import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountProfilePageEditProfileController extends GetxController {
  TextEditingController nameTEC = TextEditingController();
  TextEditingController genderTEC = TextEditingController();
  TextEditingController ageTEC = TextEditingController();
  TextEditingController mobileNumberTEC = TextEditingController();
  TextEditingController alternateMobileNumberTEC = TextEditingController();
  TextEditingController emailTEC = TextEditingController();

  RxString name = "".obs;
  RxString gender = "".obs;
  RxString age = "".obs;
  RxString mobileNumber = "".obs;
  RxString alternateMobileNumber = "".obs;
  RxString email = "".obs;

  Rxn<File> imageFile = Rxn<File>();

  @override
  void onInit() {
    super.onInit();
    nameTEC.text = "Aditya";
    genderTEC.text = "Male";
    ageTEC.text = "21";
    mobileNumberTEC.text = "7221904716";
    alternateMobileNumberTEC.text = "7221904716";
    emailTEC.text = "aditya1212@gmail.com";
    name(nameTEC.text);
    gender(genderTEC.text);
    age(ageTEC.text);
    mobileNumber(mobileNumberTEC.text);
    alternateMobileNumber(alternateMobileNumberTEC.text);
    email(emailTEC.text);
  }
}
