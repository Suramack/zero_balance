import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/03_recent_transaction/recent_transaction_by_category_view_controller.dart';

class RecentTransactionByCategoryWidget extends StatefulWidget {
  final int index;
  const RecentTransactionByCategoryWidget(this.index, {Key? key})
      : super(key: key);

  @override
  State<RecentTransactionByCategoryWidget> createState() =>
      _RecentTransactionByCategoryWidgetState();
}

class _RecentTransactionByCategoryWidgetState
    extends State<RecentTransactionByCategoryWidget> {
  final recentTransactionByCategoryViewController =
      Get.put(RecentTransactionByCategoryViewController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Transactions',
          style: titleTextStyle,
        ),
        verticalSpace(20),
        widget.index == 0
            ? GetBuilder<RecentTransactionByCategoryViewController>(
                builder: (_) => recentTransactionByCategoryViewController
                        .recentTransactionInFood.isEmpty
                    ? Text(
                        'no recent transaction',
                        style: subHeadingTextStyle,
                      )
                    : Container(
                        height: 100 *
                            recentTransactionByCategoryViewController
                                .recentTransactionInFood.length
                                .toDouble(),
                        width: screenSize(context).width,
                        decoration: BoxDecoration(
                          color: blackBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GetBuilder<
                            RecentTransactionByCategoryViewController>(
                          builder: (_) {
                            return ListView.separated(
                              reverse: true,
                              itemCount:
                                  recentTransactionByCategoryViewController
                                              .recentTransactionInFood.length >
                                          3
                                      ? 3
                                      : recentTransactionByCategoryViewController
                                          .recentTransactionInFood.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        recentTransactionByCategoryViewController
                                            .recentTransactionInFood[index]
                                            .toString(),
                                        style: titleTextStyle,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            '₹ ' +
                                                recentTransactionByCategoryViewController
                                                    .recentTransactionAmoutInFood[
                                                        index]
                                                    .toString(),
                                            style: boldHeadingTextStyle,
                                          ),
                                          Text(
                                            recentTransactionByCategoryViewController
                                                        .recentTransactionStatusInFood[
                                                    index]
                                                ? 'Success'
                                                : 'Failed',
                                            style: recentTransactionByCategoryViewController
                                                        .recentTransactionStatusInFood[
                                                    index]
                                                ? greensubHeadingTextStyle
                                                : redsubHeadingTextStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  subtitle: Text(
                                    recentTransactionByCategoryViewController
                                        .recentTransactionDateInFood[index]
                                        .toString(),
                                    style: subHeadingTextStyle,
                                  ),
                                  leading: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 50, 50, 50),
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            recentTransactionByCategoryViewController
                                                    .recentTransactionImageInFood[
                                                index],
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 3,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.amber.shade700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              separatorBuilder: (context, index) =>
                                  const Divider(height: 0),
                            );
                          },
                        ),
                      ))
            : widget.index == 1
                ? GetBuilder<RecentTransactionByCategoryViewController>(
                    builder: (_) => recentTransactionByCategoryViewController
                            .recentTransactionInEntertainment.isEmpty
                        ? Text(
                            'no recent transaction',
                            style: subHeadingTextStyle,
                          )
                        : Container(
                            height: 100 *
                                recentTransactionByCategoryViewController
                                    .recentTransactionInEntertainment.length
                                    .toDouble(),
                            width: screenSize(context).width,
                            decoration: BoxDecoration(
                              color: blackBackgroundColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GetBuilder<
                                RecentTransactionByCategoryViewController>(
                              builder: (_) {
                                return ListView.separated(
                                  reverse: true,
                                  itemCount: recentTransactionByCategoryViewController
                                              .recentTransactionInEntertainment
                                              .length >
                                          3
                                      ? 3
                                      : recentTransactionByCategoryViewController
                                          .recentTransactionInEntertainment
                                          .length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            recentTransactionByCategoryViewController
                                                .recentTransactionInEntertainment[
                                                    index]
                                                .toString(),
                                            style: titleTextStyle,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                '₹ ' +
                                                    recentTransactionByCategoryViewController
                                                        .recentTransactionAmoutInEntertainment[
                                                            index]
                                                        .toString(),
                                                style: boldHeadingTextStyle,
                                              ),
                                              Text(
                                                recentTransactionByCategoryViewController
                                                            .recentTransactionStatusInEntertainment[
                                                        index]
                                                    ? 'Success'
                                                    : 'Failed',
                                                style: recentTransactionByCategoryViewController
                                                            .recentTransactionStatusInEntertainment[
                                                        index]
                                                    ? greensubHeadingTextStyle
                                                    : redsubHeadingTextStyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      subtitle: Text(
                                        recentTransactionByCategoryViewController
                                            .recentTransactionDateInEntertainment[
                                                index]
                                            .toString(),
                                        style: subHeadingTextStyle,
                                      ),
                                      leading: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 50, 50, 50),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                recentTransactionByCategoryViewController
                                                        .recentTransactionImageInEntertainment[
                                                    index],
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: 3,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.amber.shade700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  separatorBuilder: (context, index) =>
                                      const Divider(height: 0),
                                );
                              },
                            ),
                          ))
                : widget.index == 2
                    ? GetBuilder<RecentTransactionByCategoryViewController>(
                        builder: (_) =>
                            recentTransactionByCategoryViewController
                                    .recentTransactionInShopping.isEmpty
                                ? Text(
                                    'no recent transaction',
                                    style: subHeadingTextStyle,
                                  )
                                : Container(
                                    height: 100 *
                                        recentTransactionByCategoryViewController
                                            .recentTransactionInShopping.length
                                            .toDouble(),
                                    width: screenSize(context).width,
                                    decoration: BoxDecoration(
                                      color: blackBackgroundColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: GetBuilder<
                                        RecentTransactionByCategoryViewController>(
                                      builder: (_) {
                                        return ListView.separated(
                                          reverse: true,
                                          itemCount: recentTransactionByCategoryViewController
                                                      .recentTransactionInShopping
                                                      .length >
                                                  3
                                              ? 3
                                              : recentTransactionByCategoryViewController
                                                  .recentTransactionInShopping
                                                  .length,
                                          itemBuilder: (context, index) =>
                                              Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ListTile(
                                              title: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    recentTransactionByCategoryViewController
                                                        .recentTransactionInShopping[
                                                            index]
                                                        .toString(),
                                                    style: titleTextStyle,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '₹ ' +
                                                            recentTransactionByCategoryViewController
                                                                .recentTransactionAmoutInShopping[
                                                                    index]
                                                                .toString(),
                                                        style:
                                                            boldHeadingTextStyle,
                                                      ),
                                                      Text(
                                                        recentTransactionByCategoryViewController
                                                                    .recentTransactionStatusInShopping[
                                                                index]
                                                            ? 'Success'
                                                            : 'Failed',
                                                        style: recentTransactionByCategoryViewController
                                                                    .recentTransactionStatusInShopping[
                                                                index]
                                                            ? greensubHeadingTextStyle
                                                            : redsubHeadingTextStyle,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              subtitle: Text(
                                                recentTransactionByCategoryViewController
                                                    .recentTransactionDateInShopping[
                                                        index]
                                                    .toString(),
                                                style: subHeadingTextStyle,
                                              ),
                                              leading: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                ),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 50, 50, 50),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        recentTransactionByCategoryViewController
                                                                .recentTransactionImageInShopping[
                                                            index],
                                                      ),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: 3,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .amber.shade700,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          separatorBuilder: (context, index) =>
                                              const Divider(height: 0),
                                        );
                                      },
                                    ),
                                  ))
                    : const SizedBox()
      ],
    );
  }
}
