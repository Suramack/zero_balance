import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/screen/20_category_expansion_screen/category_expansion_screen.dart';
import 'package:zero_balance/src/screen/23_dummy_screen/dummy_screen.dart';

class FavouriteCategoryWidget extends StatefulWidget {
  const FavouriteCategoryWidget({Key? key}) : super(key: key);

  @override
  State<FavouriteCategoryWidget> createState() =>
      _FavouriteCategoryWidgetState();
}

class _FavouriteCategoryWidgetState extends State<FavouriteCategoryWidget> {
  final homeScreenViewController = Get.put(HomeScreenViewController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'favourite categoris',
              style: titleTextStyle,
            ),
            TextButton(
//onTap
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DummyScreen())),
              child: Text(
                'manage',
                style: titleTextStyle,
              ),
            ),
          ],
        ),
//types of categories
        SizedBox(
          width: screenSize(context).width,
          height: 120,
          child: Row(
            children: [
              Expanded(child: GetBuilder<HomeScreenViewController>(
                builder: (_) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeScreenViewController.categoryTypes.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
//onTap
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryExpansionScreen(
                                  homeScreenViewController, index),
                            ),
                          );
                        },
                        child: CircularPercentIndicator(
                          radius: 40,
                          center: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: progressColor[index],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: homeScreenViewController
                                  .favouriteCategoryList[index],
                            ),
                          ),
                          footer: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              homeScreenViewController.categoryTypes[index]
                                  .toString(),
                              style: subHeadingTextStyle,
                            ),
                          ),
                          percent:
                              homeScreenViewController.percenageExpense[index],
                          lineWidth: 2,
                          progressColor: progressColor[index],
                          reverse: true,
                        ),
                      ),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ],
    );
  }
}
