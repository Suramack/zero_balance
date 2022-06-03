import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/screen/20_category_expansion_screen/category_expansion_screen.dart';

class CategoriesBudgetingWidget extends StatefulWidget {
  const CategoriesBudgetingWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesBudgetingWidget> createState() =>
      _CategoriesBudgetingWidgetState();
}

class _CategoriesBudgetingWidgetState extends State<CategoriesBudgetingWidget> {
  final homeScreenViewController = Get.put(HomeScreenViewController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'categories',
          style: titleTextStyle,
        ),
        verticalSpace(10),
        SizedBox(
            height: 300,
            child: GetBuilder<HomeScreenViewController>(
              builder: (_) {
                return ListView.builder(
                  itemCount: homeScreenViewController.categoryTypes.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: ListTile(
//ontap navigate to Category expansion Screen
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryExpansionScreen(
                              homeScreenViewController,
                              index,
                            ),
                          ),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              homeScreenViewController.categoryTypes[index]
                                  .toString(),
                              style: titleTextStyle,
                            ),
                            Text(
                              '₹ ' +
                                  homeScreenViewController
                                      .totalExpenseByCategory[index]
                                      .toString(),
                              style: boldHeadingTextStyle,
                            )
                          ],
                        ),
//Enpense from Brand Image list
                        subtitle: Row(children: const [
// Images
                        ]),

                        leading: CircularPercentIndicator(
                          radius: 25,
                          center: Container(
                            decoration: BoxDecoration(
                              color: progressColor[index],
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: homeScreenViewController
                                  .favouriteCategoryList[index],
                            ),
                          ),
                          percent:
                              homeScreenViewController.percenageExpense[index],
                          lineWidth: 1.5,
                          progressColor: progressColor[index],
                          reverse: true,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                  ),
                );
              },
            ))
      ],
    );
  }
}
