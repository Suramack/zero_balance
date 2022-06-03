import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/text_style/text_style.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analysis'),
      ),
      body: Center(
        child: Text(
          'Chart',
          style: subHeadingTextStyle,
        ),
      ),
    );
  }
}
