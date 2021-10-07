import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:nikat_flutter/pages/image_picker/image_picker_page.dart';
import 'package:nikat_flutter/pages/login/login.dart';
import 'package:nikat_flutter/pages/news/news_page.dart';
import 'dashboard_controller.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [Newspage(), ImagePickerPage(), Login()],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.home, label: "News"),
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.add, label: "image"),
              _bottomNavigationBarItem(
                  icon: CupertinoIcons.profile_circled, label: "login")
            ],
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
