import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/01_home/home_screen_view_contoller.dart';

class SpendOverViewWidget extends StatefulWidget {
  const SpendOverViewWidget({Key? key}) : super(key: key);

  @override
  State<SpendOverViewWidget> createState() => _SpendOverViewWidgetState();
}

class _SpendOverViewWidgetState extends State<SpendOverViewWidget> {
  final homeScreenViewController = Get.put(HomeScreenViewController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize(context).width,
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GetBuilder<HomeScreenViewController>(
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 40),
                child: Text(
                  'Total spent this month',
                  style: blackHeadingTextStyle,
                ),
              ),
              SfSlider(
                value: homeScreenViewController.expanse >
                        homeScreenViewController.sliderMaxValue
                    ? homeScreenViewController.sliderMaxValue
                    : homeScreenViewController.expanse,
                min: homeScreenViewController.sliderMinValue,
                max: homeScreenViewController.sliderMaxValue,
                activeColor: const Color.fromARGB(255, 68, 218, 168),
                inactiveColor: const Color.fromARGB(255, 255, 213, 139),
                shouldAlwaysShowTooltip: true,
                tooltipShape: const SfPaddleTooltipShape(),
                thumbIcon: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (value) {},
              ),
            ],
          );
        },
      ),
    );
  }
}
