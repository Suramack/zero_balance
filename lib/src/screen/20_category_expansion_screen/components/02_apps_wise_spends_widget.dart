import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/add_expense_screen.dart';
import 'package:zero_balance/src/screen/23_dummy_screen/dummy_screen.dart';

class AppsWiseSpendWidget extends StatefulWidget {
  final int index;
  final HomeScreenViewController homeScreenViewController;
  const AppsWiseSpendWidget(this.homeScreenViewController, this.index,
      {Key? key})
      : super(key: key);

  @override
  State<AppsWiseSpendWidget> createState() => _AppsWiseSpendWidgetState();
}

class _AppsWiseSpendWidgetState extends State<AppsWiseSpendWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.join_inner,
                  color: blueAccentColor,
                ),
                horizontalSpace(10),
                Text(
                  'Apps wise spends',
                  style: titleTextStyle,
                ),
              ],
            ),
            ElevatedButton(
//onTap
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddExpenseScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                maximumSize: const Size(150, 50),
                minimumSize: const Size(150, 50),
                primary: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                  side: BorderSide(color: whiteColor),
                ),
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.add,
                    color: Color.fromARGB(255, 103, 254, 57),
                  ),
                  Text('add expense'),
                ],
              ),
            ),
          ],
        ),
        verticalSpace(20),
        widget.index == 0
            ? GetBuilder<HomeScreenViewController>(
                builder: (_) => widget.homeScreenViewController
                        .recentAppWiseTransactionLogoForFood.isEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'no recent spends',
                            style: subHeadingTextStyle,
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Container(
                            height: widget
                                        .homeScreenViewController
                                        .recentAppWiseTransactionLogoForFood
                                        .length >
                                    3
                                ? 3
                                : 120 *
                                    widget
                                        .homeScreenViewController
                                        .recentAppWiseTransactionLogoForFood
                                        .length
                                        .toDouble(),
                            width: screenSize(context).width,
                            decoration: BoxDecoration(
                              color: blackBackgroundColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.separated(
                                    itemCount: widget
                                                .homeScreenViewController
                                                .recentAppWiseTransactionLogoForFood
                                                .length >
                                            3
                                        ? 3
                                        : widget
                                            .homeScreenViewController
                                            .recentAppWiseTransactionLogoForFood
                                            .length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        leading: Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: blackBackgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            widget
                                                .homeScreenViewController
                                                .recentAppWiseTransactionLogoForFood[
                                                    index]
                                                .toString(),
                                          ),
                                        ),
                                        title: Text(
                                          widget
                                              .homeScreenViewController
                                              .recentAppWiseTransactionNameForFood[
                                                  index]
                                              .toString(),
                                          style: titleTextStyle,
                                        ),
                                        subtitle: Text(
                                          widget
                                              .homeScreenViewController
                                              .recentAppWiseTransactionAmountForFood[
                                                  index]
                                              .toString(),
                                          style: titleTextStyle,
                                        ),
                                      ),
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const Divider(height: 0),
                                  ),
                                ),
                                TextButton(
//onTap
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DummyScreen(),
                                    ),
                                  ),
                                  child: Text('view all',
                                      style: subHeadingTextStyle),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
            : widget.index == 1
                ? GetBuilder<HomeScreenViewController>(
                    builder: (_) => widget
                            .homeScreenViewController
                            .recentAppWiseTransactionLogoForEntertainment
                            .isEmpty
                        ? Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'no recent spends',
                                style: subHeadingTextStyle,
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              Container(
                                height: widget
                                            .homeScreenViewController
                                            .recentAppWiseTransactionLogoForEntertainment
                                            .length >
                                        3
                                    ? 3
                                    : 120 *
                                        widget
                                            .homeScreenViewController
                                            .recentAppWiseTransactionLogoForEntertainment
                                            .length
                                            .toDouble(),
                                width: screenSize(context).width,
                                decoration: BoxDecoration(
                                  color: blackBackgroundColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: ListView.separated(
                                        itemCount: widget
                                                    .homeScreenViewController
                                                    .recentAppWiseTransactionLogoForEntertainment
                                                    .length >
                                                3
                                            ? 3
                                            : widget
                                                .homeScreenViewController
                                                .recentAppWiseTransactionLogoForEntertainment
                                                .length,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListTile(
                                            leading: Container(
                                              width: 45,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: blackBackgroundColor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Image.asset(
                                                widget
                                                    .homeScreenViewController
                                                    .recentAppWiseTransactionLogoForEntertainment[
                                                        index]
                                                    .toString(),
                                              ),
                                            ),
                                            title: Text(
                                              widget
                                                  .homeScreenViewController
                                                  .recentAppWiseTransactionNameForEntertainment[
                                                      index]
                                                  .toString(),
                                              style: titleTextStyle,
                                            ),
                                            subtitle: Text(
                                              widget
                                                  .homeScreenViewController
                                                  .recentAppWiseTransactionAmountForEntertainment[
                                                      index]
                                                  .toString(),
                                              style: titleTextStyle,
                                            ),
                                          ),
                                        ),
                                        separatorBuilder: (context, index) =>
                                            const Divider(height: 0),
                                      ),
                                    ),
                                    TextButton(
//onTap
                                      onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const DummyScreen(),
                                        ),
                                      ),
                                      child: Text('view all',
                                          style: subHeadingTextStyle),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))
                : widget.index == 2
                    ? GetBuilder<HomeScreenViewController>(
                        builder: (_) => widget.homeScreenViewController
                                .recentAppWiseTransactionLogoForShopping.isEmpty
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'no recent spends',
                                    style: subHeadingTextStyle,
                                  ),
                                ),
                              )
                            : Column(
                                children: [
                                  Container(
                                    height: widget
                                                .homeScreenViewController
                                                .recentAppWiseTransactionLogoForShopping
                                                .length >
                                            3
                                        ? 3
                                        : 120 *
                                            widget
                                                .homeScreenViewController
                                                .recentAppWiseTransactionLogoForShopping
                                                .length
                                                .toDouble(),
                                    width: screenSize(context).width,
                                    decoration: BoxDecoration(
                                      color: blackBackgroundColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: ListView.separated(
                                            itemCount: widget
                                                        .homeScreenViewController
                                                        .recentAppWiseTransactionLogoForShopping
                                                        .length >
                                                    3
                                                ? 3
                                                : widget
                                                    .homeScreenViewController
                                                    .recentAppWiseTransactionLogoForShopping
                                                    .length,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: ListTile(
                                                leading: Container(
                                                  width: 45,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    color: blackBackgroundColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Image.asset(
                                                    widget
                                                        .homeScreenViewController
                                                        .recentAppWiseTransactionLogoForShopping[
                                                            index]
                                                        .toString(),
                                                  ),
                                                ),
                                                title: Text(
                                                  widget
                                                      .homeScreenViewController
                                                      .recentAppWiseTransactionNameForShopping[
                                                          index]
                                                      .toString(),
                                                  style: titleTextStyle,
                                                ),
                                                subtitle: Text(
                                                  widget
                                                      .homeScreenViewController
                                                      .recentAppWiseTransactionAmountForShopping[
                                                          index]
                                                      .toString(),
                                                  style: titleTextStyle,
                                                ),
                                              ),
                                            ),
                                            separatorBuilder:
                                                (context, index) =>
                                                    const Divider(height: 0),
                                          ),
                                        ),
                                        TextButton(
//onTap
                                          onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const DummyScreen(),
                                            ),
                                          ),
                                          child: Text('view all',
                                              style: subHeadingTextStyle),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                    : const SizedBox(),
      ],
    );
  }
}
