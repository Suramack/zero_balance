import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/screen/21_add_expense_screen/add_expense_screen.dart';

class NameAndAddButtonWidget extends StatefulWidget {
  const NameAndAddButtonWidget({Key? key}) : super(key: key);

  @override
  State<NameAndAddButtonWidget> createState() => _NameAndAddButtonWidgetState();
}

class _NameAndAddButtonWidgetState extends State<NameAndAddButtonWidget> {
  final homeScreenViewController = Get.put(HomeScreenViewController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, ' + homeScreenViewController.userName.toString() + '!',
                style: boldHeadingTextStyle,
              ),
              Text(
                homeScreenViewController.userSubtitle.toString(),
                textAlign: TextAlign.start,
                maxLines: 2,
                style: subHeadingTextStyle,
              ),
            ],
          ),
        ),
        ElevatedButton(
//onTap
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddExpenseScreen(),
            ),
          ),
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
        )
      ],
    );
  }
}
