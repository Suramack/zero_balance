import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';
import 'package:zero_balance/src/screen/01_home_screen/components/01_name_and_add_button_widget.dart';
import 'package:zero_balance/src/screen/01_home_screen/components/02_spent_overview_widget.dart';
import 'package:zero_balance/src/screen/01_home_screen/components/03_favourite_category_widget.dart';
import 'package:zero_balance/src/screen/01_home_screen/components/04_rewards_widget.dart';
import 'package:zero_balance/src/screen/01_home_screen/components/05_reffer_a_friend.widget.dart';
import 'package:zero_balance/src/screen/23_dummy_screen/dummy_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeScreenViewController = Get.put(HomeScreenViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SizedBox(
            width: 150,
            child: Image.asset('assets/images/app_bar_logo.png'),
          ),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DummyScreen())),
                icon: const Icon(Icons.notifications_none)),
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DummyScreen())),
                icon: const Icon(Icons.account_circle_rounded)),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
//user name and add Button
              const NameAndAddButtonWidget(),
              verticalSpace(30),

// Total spend Container
              const SpendOverViewWidget(),
              verticalSpace(20),

// Favourite categoris and Manage
              const FavouriteCategoryWidget(),
              verticalSpace(20),

// popular rewards and explore all
              const RewardWidget(),
              verticalSpace(20),

//   reffer to a friend
              const RefferAfriendWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
