import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/controller/03_recent_transaction/recent_transaction_by_category_view_controller.dart';
import 'package:zero_balance/src/controller/03_recent_transaction/recent_transaction_view_controller.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/components/01_amount_tile_widget.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/components/02_category_tile_widget.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/components/03_date_tile_widget.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/components/04_merchant_tile_widget.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/components/05_payment_tile_widget.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final homeScreenViewController = Get.put(HomeScreenViewController());
  final transactionViewController = Get.put(TransactionViewController());
  final recentTransactionByCategoryViewController =
      Get.put(RecentTransactionByCategoryViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('add expense')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Record your expenses for them to reflection your categories',
                style: whiteHeadingTextStyle,
              ),
              verticalSpace(20),
              Column(
                children: [
//Amount Tile
                  const AmountWidget(),
                  verticalSpace(20),

//Category Tile
                  CategoryWidgetInAddExpense(),
                  verticalSpace(20),

// Date
                  const DateTileWidgetInAddExpense(),
                  verticalSpace(20),

//Merchant Tile
                  MerchantTileWidgetInAddExpense(),
                  verticalSpace(20),

// Category Tile

                  const PaymentTileWidgetInAddExpense(),
                  verticalSpace(80),

// Add Button
                  ElevatedButton(
//onTap
                    onPressed: () {
                      if (homeScreenViewController
                              .amountTextEditingController.text.isNum &&
                          homeScreenViewController
                                  .amountTextEditingController.text !=
                              '0' &&
                          homeScreenViewController
                                  .amountTextEditingController.text !=
                              '0.0') {
//Poping Add screen
                        Navigator.pop(context);

// Calling add expense method
                        homeScreenViewController.addExpense(
                          double.parse(homeScreenViewController
                              .amountTextEditingController.text),
                        );

//category expense in percentage

                        homeScreenViewController.setCategoryExpenseInPercentage(
                            homeScreenViewController.selectedCategory
                                .toString(),
                            double.parse(homeScreenViewController
                                .amountTextEditingController.text));

// Add recent Transaction
                        transactionViewController.addRecentTransaction(
                            homeScreenViewController.selectedMerchant,
                            double.parse(homeScreenViewController
                                .amountTextEditingController.text
                                .toString()),
                            homeScreenViewController.selectedDate,
                            homeScreenViewController.selectedMerchant
                                .toString());
//add appwise spend
                        homeScreenViewController.addRecentAppWiseTransaction(
                          homeScreenViewController.selectedMerchant.toString(),
                          homeScreenViewController.selectedMerchant.toString(),
                          homeScreenViewController
                              .amountTextEditingController.text,
                          homeScreenViewController.selectedCategory,
                        );

//recent transaction by category
                        recentTransactionByCategoryViewController
                            .setRecentTransactionByCategory(
                          homeScreenViewController.selectedCategory,
                          homeScreenViewController.selectedMerchant,
                          double.parse(homeScreenViewController
                              .amountTextEditingController.text),
                          true,
                          homeScreenViewController.selectedDate,
                          homeScreenViewController.selectedMerchant,
                        );

//Setting default value to Zero
                        homeScreenViewController
                            .amountTextEditingController.text = '0';
                      } else {
                        print("enter a amount");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(screenSize(context).width, 55),
                      minimumSize: Size(screenSize(context).width, 55),
                    ),
                    child: Text(
                      'Add expense',
                      style: titleTextStyle,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
