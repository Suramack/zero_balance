import 'package:flutter/material.dart';

String get appBarTitle => 'Zero Balance';

Size screenSize(BuildContext context) => MediaQuery.of(context).size;

Color get whiteColor => Colors.white;

Color get greyColor => const Color.fromARGB(66, 232, 232, 232);

SizedBox verticalSpace(double space) => SizedBox(height: space);

SizedBox horizontalSpace(double space) => SizedBox(width: space);

List<Color> get progressColor => const [
      Color.fromARGB(255, 250, 152, 125),
      Color.fromARGB(255, 102, 186, 255),
      Color.fromARGB(255, 157, 125, 239),
    ];

Color get blackBackgroundColor => Colors.black26;

Color get blueAccentColor => Color.fromARGB(255, 38, 119, 190);
