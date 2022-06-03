import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';
import 'package:zero_balance/src/controller/99_ads_view_controller/ads_view_controller.dart';
import 'package:zero_balance/src/screen/23_dummy_screen/dummy_screen.dart';

class RewardWidget extends StatefulWidget {
  const RewardWidget({Key? key}) : super(key: key);

  @override
  State<RewardWidget> createState() => _RewardWidgetState();
}

class _RewardWidgetState extends State<RewardWidget> {
  final adsViewController = Get.put(AdsViewController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
// Subtitle
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'popular rewards',
                  style: titleTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'pay with zerobalance card',
                    style: subHeadingTextStyle,
                  ),
                ),
              ],
            ),
            TextButton(
//onTap
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DummyScreen())),
              child: Text(
                'explore all',
                style: titleTextStyle,
              ),
            ),
          ],
        ),
//Caruosel
        CarouselSlider.builder(
          itemCount: adsViewController.partnersList.length,
          itemBuilder: (context, index, value) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: InkWell(
// onTap Reward
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DummyScreen())),
              child: Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(adsViewController.partnersList[index]),
                      verticalSpace(10),
                      Text(
                        adsViewController.cashBack.toString(),
                        style: blackHeadingTextStyle,
                      ),
                      verticalSpace(10),
                      Text(
                        adsViewController.cashBackSubTitle.toString(),
                        style: subHeadingTextStyle,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                      verticalSpace(10),
                      Row(
                        children: [
                          Text(
                            'Activate',
                            style: blackTextStyle,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 22,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          options: CarouselOptions(
            enableInfiniteScroll: false,
            viewportFraction: .8,
            height: 200,
          ),
        ),
      ],
    );
  }
}
