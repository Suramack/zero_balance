import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';

class MerchantTileWidgetInAddExpense extends StatefulWidget {
  const MerchantTileWidgetInAddExpense({Key? key}) : super(key: key);

  @override
  State<MerchantTileWidgetInAddExpense> createState() =>
      _MerchantTileWidgetInAddExpenseState();
}

class _MerchantTileWidgetInAddExpenseState
    extends State<MerchantTileWidgetInAddExpense> {
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
                    'Merchant',
                    style: titleTextStyle,
                  ),
                  GetBuilder<HomeScreenViewController>(
                    builder: (_) {
                      return DropdownButton<String>(
                          style: bigTextStyle,
                          underline: const SizedBox(),
                          value: homeScreenViewController.selectedMerchant
                              .toString(),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: homeScreenViewController.subCategory[
                                  homeScreenViewController
                                      .selectedSubCategoryIndex]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          }).toList(),
//OnTap
                          onChanged: (value) {
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
