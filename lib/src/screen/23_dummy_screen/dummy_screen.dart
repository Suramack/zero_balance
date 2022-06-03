import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is a dummy screen')),
      body: Center(
          child: Text(
        'A dummy screen',
        style: subHeadingTextStyle,
      )),
    );
  }
}
