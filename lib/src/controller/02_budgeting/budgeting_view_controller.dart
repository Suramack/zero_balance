import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';

final homeScreenViewController = HomeScreenViewController();

class BudgetingViewController extends GetxController {
  List<double> spendValuesInPercentage = [0, 0, 0, 2];
  List<Color> get progressIndicatorColor => [
        for (int i = 0; i < progressColor.length; i++) progressColor[i],
        Colors.grey.shade800,
      ];

  var l = homeScreenViewController.categoryTypes;

  void setSpendValuesInPercentage() {
    spendValuesInPercentage = homeScreenViewController.percenageExpense;

    update();
  }
}
