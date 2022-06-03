import 'package:get/get.dart';

class CategoryExpansionViewController extends GetxController {
  List<String> get daysInRangeBycategory => [
        '7 Day',
        '30 Days',
        '90 Days',
      ];
  List<bool> selectedToggleButtonList = [
    true,
    false,
    false,
  ];

  void setToggleButtonSelected(int index) {
    switch (index) {
      case 0:
        selectedToggleButtonList = [
          true,
          false,
          false,
        ];
        break;
      case 1:
        selectedToggleButtonList = [
          false,
          true,
          false,
        ];
        break;
      case 2:
        selectedToggleButtonList = [
          false,
          false,
          true,
        ];
        break;
      default:
    }
    update();
  }
}
