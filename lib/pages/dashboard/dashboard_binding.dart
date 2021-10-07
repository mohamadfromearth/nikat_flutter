import 'package:get/get.dart';
import 'package:nikat_flutter/pages/dashboard/dashboard_controller.dart';
import 'package:nikat_flutter/pages/image_picker/image_picker_controller.dart';
import 'package:nikat_flutter/pages/news/news_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => NewsController());
    Get.lazyPut(() => ImagePickerController());

    // Get.lazyPut<DashboardController>(() => DashboardController());
    // Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<AccountController>(() => AccountController());
    // Get.lazyPut<PostsController>(() => PostsController());
  }
}
