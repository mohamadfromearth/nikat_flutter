import 'package:get/get.dart';
import 'package:nikat_flutter/pages/dashboard/dashboard_binding.dart';
import 'package:nikat_flutter/pages/dashboard/dashboard_page.dart';
import 'package:nikat_flutter/routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
  ];
}
