import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';

class DateTileWidgetInAddExpense extends StatefulWidget {
  const DateTileWidgetInAddExpense({Key? key}) : super(key: key);

  @override
  State<DateTileWidgetInAddExpense> createState() =>
      _DateTileWidgetInAddExpenseState();
}

class _DateTileWidgetInAddExpenseState
    extends State<DateTileWidgetInAddExpense> {
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
                    'Date',
                    style: titleTextStyle,
                  ),
                  GetBuilder<HomeScreenViewController>(
                    builder: (_) {
                      return SizedBox(
                        width: 290,
                        height: 50,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
//onChanged
                          onDateTimeChanged: (value) {},
                          minimumYear: DateTime.now().year,
                          maximumYear: DateTime.now().year,
                          initialDateTime: DateTime(
                            DateTime.now().year,
                            DateTime.now().month,
                            DateTime.now().day,
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                      );
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
