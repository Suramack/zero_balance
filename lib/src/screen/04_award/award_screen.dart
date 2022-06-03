import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';

class AwardScreen extends StatelessWidget {
  const AwardScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Become a member'),
      ),
      body: Center(
        child: Text(
          'Subscribe to Pro membership',
          style: subHeadingTextStyle,
        ),
      ),
    );
  }
}
