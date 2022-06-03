import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';

class CategoryWidgetInAddExpense extends StatefulWidget {
  const CategoryWidgetInAddExpense({Key? key}) : super(key: key);

  @override
  State<CategoryWidgetInAddExpense> createState() =>
      _CategoryWidgetInAddExpenseState();
}

class _CategoryWidgetInAddExpenseState
    extends State<CategoryWidgetInAddExpense> {
  final homeScreenViewController = Get.put(HomeScreenViewController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize(context).width,
      decoration: BoxDecoration(
        color: blackBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: titleTextStyle,
                  ),
                  GetBuilder<HomeScreenViewController>(
                    builder: (_) {
                      return DropdownButton<String>(
                          style: bigTextStyle,
                          underline: const SizedBox(),
                          value: homeScreenViewController.selectedCategory
                              .toString(),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: homeScreenViewController.categoryTypes
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          }).toList(),
//OnTap
                          onChanged: (value) {
                            homeScreenViewController
                                .setSelectedCategory(value.toString());
                            homeScreenViewController
                                .setSelectedSubcategoryIndex(value.toString());
                            homeScreenViewController
                                .setSelectedMerchant(value.toString());
                          });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
