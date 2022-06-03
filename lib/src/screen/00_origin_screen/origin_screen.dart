import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/controller/bottom_navigation_bar_view_controller.dart';

class OriginScreen extends StatefulWidget {
  const OriginScreen({Key? key}) : super(key: key);

  @override
  State<OriginScreen> createState() => _OriginScreenState();
}

class _OriginScreenState extends State<OriginScreen> {
  final bottomNavigationBarViewController =
      Get.put(BottomNavigationBarViewController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarViewController>(
      builder: (_) {
        return Scaffold(
          body: bottomNavigationBarViewController
              .originBody[bottomNavigationBarViewController.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomNavigationBarViewController.currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              bottomNavigationBarViewController.setCurrentIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card), label: 'Budget'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_rounded), label: 'Chart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports_golf_outlined), label: 'Pro'),
            ],
          ),
        );
      },
    );
  }
}
