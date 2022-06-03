import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/03_recent_transaction/recent_transaction_view_controller.dart';
import 'package:zero_balance/src/screen/23_dummy_screen/dummy_screen.dart';

class RecentTranscationBudgetingWidget extends StatefulWidget {
  const RecentTranscationBudgetingWidget({Key? key}) : super(key: key);

  @override
  State<RecentTranscationBudgetingWidget> createState() =>
      _RecentTranscationBudgetingWidgetState();
}

class _RecentTranscationBudgetingWidgetState
    extends State<RecentTranscationBudgetingWidget> {
  final transactionViewController = Get.put(TransactionViewController());
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize(context).width,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.card_membership_outlined,
                    color: Colors.blue.shade600,
                  ),
                ),
                Text(
                  'recent transactions',
                  style: titleTextStyle,
                ),
              ],
            ),
//List Tile
            GetBuilder<TransactionViewController>(
              builder: (_) {
                return transactionViewController
                        .recentTransactionBrandName.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        child: Text(
                          'no recent transaction',
                          style: subHeadingTextStyle,
                        ),
                      )
                    : SizedBox(
                        height: transactionViewController
                                    .recentTransactionBrandName.length >
                                4
                            ? 100 * 4
                            : 100 *
                                transactionViewController
                                    .recentTransactionBrandName.length
                                    .toDouble(),
                        child: ListView.separated(
                          reverse: true,
                          itemCount: transactionViewController
                                      .recentTransactionBrandName.length >
                                  4
                              ? 4
                              : transactionViewController
                                  .recentTransactionBrandName.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    transactionViewController
                                        .recentTransactionBrandName[index]
                                        .toString(),
                                    style: titleTextStyle,
                                  ),
                                  Text(
                                    '₹ ' +
                                        transactionViewController
                                            .recentTransactionCashByBrand[index]
                                            .toString(),
                                    style: boldHeadingTextStyle,
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                transactionViewController
                                    .recentTransactionDateByBrand[index]
                                    .toString()
                                    .substring(0, 10),
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
                                    color:
                                        const Color.fromARGB(255, 50, 50, 50),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        transactionViewController
                                            .recentTransactionBarndLogo[index],
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
                        ),
                      );
              },
            ),

            TextButton(
//onTap
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DummyScreen())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'see all',
                    style: titleTextStyle,
                  ),
                  const Icon(Icons.arrow_forward_rounded)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
