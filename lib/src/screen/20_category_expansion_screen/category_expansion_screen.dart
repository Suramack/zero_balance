import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/screen/20_category_expansion_screen/components/01_over_view_container_widget.dart';
import 'package:zero_balance/src/screen/20_category_expansion_screen/components/02_apps_wise_spends_widget.dart';
import 'package:zero_balance/src/screen/20_category_expansion_screen/components/03_recent_transacation_by_category_widget.dart';

class CategoryExpansionScreen extends StatefulWidget {
  final int index;
  final HomeScreenViewController homeScreenViewController;
  const CategoryExpansionScreen(this.homeScreenViewController, this.index,
      {Key? key})
      : super(key: key);

  @override
  State<CategoryExpansionScreen> createState() =>
      _CategoryExpansionScreenState();
}

class _CategoryExpansionScreenState extends State<CategoryExpansionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget
              .homeScreenViewController.categoryTypes[widget.index]
              .toString())),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//Overview BarChart expense
              OverviewBarChartWidget(
                widget.homeScreenViewController,
                widget.index,
              ),
              verticalSpace(20),
//Apps Wise spends widget
              AppsWiseSpendWidget(
                widget.homeScreenViewController,
                widget.index,
              ),
              verticalSpace(20),
// Recent Transaction By Category Widget
              RecentTransactionByCategoryWidget(widget.index),
            ],
          ),
        ),
      ),
    );
  }
}
