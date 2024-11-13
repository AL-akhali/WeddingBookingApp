import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/features/core/controller/layout_controller.dart';
import 'package:bookingweddingapp/src/features/core/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

import '../Home/home_Screen.dart';
import '../cart/cart_screen.dart';
import '../package/package_screen.dart';
import '../services/services_screen.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});

  final screens = [
    HomeScreen(),
    ServicesScreen(),
    CartScreen(),
    PackageScreen()
  ];


  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(LayoutController());

    return Scaffold(
      body: Obx(
        ()=> IndexedStack(
          index: pageController.currentIndex.value,
          children: screens,
        ),
      ),
      bottomNavigationBar: MotionTabBar(
          initialSelectedTab: "الباقات",
          labels: ["الرئيسية","الخدمات","الحجوزات","الباقات"],
          tabIconColor: anSeconderyColor,
          tabSelectedColor: anCardBgColor,
          icons: [Icons.home,Icons.room_service_sharp,Icons.shopping_cart,Icons.card_travel_sharp],
          textStyle: TextStyle(color: anDarkColor),
          onTabItemSelected: (index) {
            pageController.changeIndex(index);
          },


      ),
    );
  }
}
