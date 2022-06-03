import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/controller/02_budgeting/budgeting_view_controller.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  const ProgressIndicatorWidget({Key? key}) : super(key: key);

  @override
  State<ProgressIndicatorWidget> createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> {
  final budgetingViewController = Get.put(BudgetingViewController());
  final homeScreenViewController = Get.put(HomeScreenViewController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize(context).width,
      height: 350,
      decoration: BoxDecoration(
        color: blackBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(45.0),
        child: GetBuilder<BudgetingViewController>(
          builder: (_) {
            return GetBuilder<HomeScreenViewController>(
              builder: (_) {
                return MultiCircularSlider(
                  values: [
                    homeScreenViewController.percenageExpense[0],
                    homeScreenViewController.percenageExpense[1],
                    homeScreenViewController.percenageExpense[2],
                    2
                  ],
                  colors: [
                    progressColor[0],
                    progressColor[1],
                    progressColor[2],
                    Colors.grey.shade800
                  ],
                  showTotalPercentage: false,
                  size: MediaQuery.of(context).size.width * 0.7,
                  trackWidth: 10,
                  innerWidget: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.credit_card),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text("this month's spend"),
                        ),
                        Text(
                          '₹ ' + homeScreenViewController.expanse.toString(),
                          style: extrabigTextStyle,
                        ),
                        homeScreenViewController.expanse >
                                homeScreenViewController.sliderMaxValue
                            ? Text(
                                'limit exceeded',
                                style: redsubHeadingTextStyle,
                              )
                            : const SizedBox()
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
