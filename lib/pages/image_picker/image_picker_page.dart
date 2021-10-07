import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikat_flutter/pages/image_picker/image_picker_controller.dart';
import 'package:get/get.dart';

class ImagePickerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<ImagePickerController>(
      builder: (controller) {
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200.0,
                    child: controller.imageFile == null
                        ? Image.asset("images/logo.png")
                        : Image.file(controller.imageFile!),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  TextButton(
                      onPressed: () => {controller.pickImage()},
                      child: Text("Select image")),
                ],
              ),
            ));
      },
    ));
  }
}
