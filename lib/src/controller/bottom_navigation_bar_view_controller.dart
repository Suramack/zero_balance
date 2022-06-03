import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/screen/01_home_screen/home_screen.dart';
import 'package:zero_balance/src/screen/02_budgeting_screen/budgeting_screen.dart';
import 'package:zero_balance/src/screen/03_category_screen.dart/category_screen.dart';
import 'package:zero_balance/src/screen/04_award/award_screen.dart';

class BottomNavigationBarViewController extends GetxController {
  int currentIndex = 0;

  List<Widget> get originBody => const [
        HomeScreen(),
        BudgetingScreen(),
        CategoryScreen(),
        AwardScreen(),
      ];

  void setCurrentIndex(int index) {
    currentIndex = index;
    update();
  }
}
