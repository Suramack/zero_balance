import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/controller/20_category_expansion/category_expansion_view_controller.dart';

class OverviewBarChartWidget extends StatefulWidget {
  final int index;
  final HomeScreenViewController homeScreenViewController;
  const OverviewBarChartWidget(this.homeScreenViewController, this.index,
      {Key? key})
      : super(key: key);

  @override
  State<OverviewBarChartWidget> createState() => _OverviewBarChartWidgetState();
}

class _OverviewBarChartWidgetState extends State<OverviewBarChartWidget> {
  final categoryExpansionViewController =
      Get.put(CategoryExpansionViewController());
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: GetBuilder<CategoryExpansionViewController>(
          builder: (_) {
            return Column(children: [
//List of buttons
              SizedBox(
                height: 35,
                width: screenSize(context).width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last',
                      style: subHeadingTextStyle,
                    ),
                    ToggleButtons(
//onTap
                      onPressed: (index) {
                        categoryExpansionViewController
                            .setToggleButtonSelected(index);
                      },
                      constraints: const BoxConstraints(
                        maxHeight: 45,
                        minHeight: 45,
                        maxWidth: 90,
                        minWidth: 90,
                      ),
                      selectedColor: whiteColor,
                      color: greyColor, fillColor: Colors.grey.shade800,
                      selectedBorderColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      borderWidth: 0,
                      borderColor: Colors.transparent,
                      children: [
                        Text(
                          categoryExpansionViewController
                              .daysInRangeBycategory[0]
                              .toString(),
                        ),
                        Text(
                          categoryExpansionViewController
                              .daysInRangeBycategory[1]
                              .toString(),
                        ),
                        Text(
                          categoryExpansionViewController
                              .daysInRangeBycategory[2]
                              .toString(),
                        ),
                      ],
                      isSelected: categoryExpansionViewController
                          .selectedToggleButtonList,
                    ),
                  ],
                ),
              ),
              verticalSpace(20),
//This Month expanse
              Row(
                children: [
                  CircularPercentIndicator(
                    radius: 25,
                    center: Container(
                      decoration: BoxDecoration(
                        color: progressColor[widget.index],
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: widget.homeScreenViewController
                            .favouriteCategoryList[widget.index],
                      ),
                    ),
                    percent: widget.homeScreenViewController
                        .percenageExpense[widget.index],
                    lineWidth: 1.5,
                    progressColor: progressColor[widget.index],
                    reverse: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Spend this months',
                          style: subHeadingTextStyle,
                        ),
                        Text(
                          '₹ ' +
                              widget.homeScreenViewController
                                  .totalExpenseByCategory[widget.index]
                                  .toString(),
                          style: bigTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
              verticalSpace(50),
              const Center(
                child: Text('No chart data '),
              )
            ]);
          },
        ),
      ),
    );
  }
}
