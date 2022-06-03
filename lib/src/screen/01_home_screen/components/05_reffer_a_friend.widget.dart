import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zero_balance/src/constant/deafult_values/default_values.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';

class RefferAfriendWidget extends StatefulWidget {
  const RefferAfriendWidget({Key? key}) : super(key: key);

  @override
  State<RefferAfriendWidget> createState() => _RefferAfriendWidgetState();
}

class _RefferAfriendWidgetState extends State<RefferAfriendWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize(context).width,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 165, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
// Title and reffer Button
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Help your friends balance their finances',
                  style: bigTextStyle,
                  textAlign: TextAlign.start,
                  maxLines: 3,
                ),
                ElevatedButton(
//  onPressed
                    onPressed: () async {
                      openWhatsapp();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      maximumSize: const Size(150, 45),
                      minimumSize: const Size(150, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'reffer friend',
                          style: blackTextStyle,
                        ),
                        horizontalSpace(8),
                        const Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ],
                    ))
              ],
            ),
          ),
// Image
          Image.asset('assets/images/reffer_a_friend.png')
        ]),
      ),
    );
  }
}

Future openWhatsapp() async {
  await launch(
      '''https://wa.me/?text=Im Using ZeroBalance, Its Amazing. would you like to Install?\n https://play.google.com/store/apps/details?id=com.zerobalance.zb_app''');
}
