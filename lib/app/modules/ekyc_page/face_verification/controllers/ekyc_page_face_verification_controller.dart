import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/routes/app_pages.dart';

class EkycPageFaceVerificationController extends GetxController {
  Rxn<File> imageFile = Rxn<File>();
  CameraController? cameraController;
  RxBool isCameraInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    onCameraSelected();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    cameraController?.dispose();
    super.onClose();
  }

  void showSuccessDialog() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.back();
      Get.toNamed(Routes.EKYC_PAGE_AADHAR_VERIFICATION);
    });
    Get.dialog(
      WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Container(
          color: Colors.transparent,
          child: Center(
            child: SizedBox(
              height: 64,
              width: 64,
              child: Center(
                child: Image.asset(
                  "assets/images/png/correct_tick.png",
                ),
              ),
            ),
          ),
        ),
      ),
      barrierDismissible: false,
      barrierColor: Colors.transparent,
    );
  }

  Future<void> onCameraSelected() async {
    try {
      final cameras = await availableCameras();
      final backCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
      );

      cameraController = CameraController(
        backCamera,
        ResolutionPreset.high,
      );

      await cameraController!.initialize();
      isCameraInitialized(true);
    } on CameraException catch (e) {
      debugPrint(e.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> takePicture() async {
    try {
      final file = await cameraController!.takePicture();
      imageFile.value = File(file.path);
      Future.delayed(const Duration(milliseconds: 500), () {
        showSuccessDialog();
      });
    } on CameraException catch (e) {
      return;
    } catch (e) {
      return;
    }
    return;
  }
}
