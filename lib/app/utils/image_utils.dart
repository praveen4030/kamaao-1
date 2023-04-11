import 'dart:developer';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageUtils {
  static Future<File?> pickImage(ImageSource gallery) async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return null;
      final imageTemporary = File(image.path);
      return imageTemporary;
    } on Exception catch (e) {
      log('Failed to pick image:$e');
    }
  }
}
