import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EkycPageTakeDocumentPhotoController extends GetxController {
  CameraController? cameraController;
  RxBool isCameraInitialized = false.obs;
  String title = "";
  String subtitle = "";
  File? imageFile;
  @override
  void onInit() {
    super.onInit();
    onCameraSelected();
    title = Get.arguments['title'];
    subtitle = Get.arguments['subtitle'];
  }

  @override
  void onClose() {
    cameraController?.dispose();
    super.onClose();
  }

  Future<void> onCameraSelected() async {
    try {
      final cameras = await availableCameras();
      final backCamera = cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
      );

      cameraController = CameraController(
        backCamera,
        ResolutionPreset.medium,
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
      Future.delayed(const Duration(milliseconds: 500), () {
        Get.back(result: File(file.path));
      });
    } on CameraException catch (e) {
      return;
    } catch (e) {
      return;
    }
    return;
  }
}
