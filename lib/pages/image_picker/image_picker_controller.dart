import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final _imagePicker = ImagePicker();

  XFile? image;
  File? imageFile;

  void pickImage() async {
    image = await _imagePicker.pickImage(source: ImageSource.gallery);
    image == null ? image = null : imageFile = File(image!.path);
    update();
  }
}
