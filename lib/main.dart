import 'package:flutter/material.dart';
import 'package:zero_balance/src/constant/theme/theme_data.dart';
import 'package:zero_balance/src/screen/spash_screen.dart/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero Balance',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: appbarThemeData,
        cupertinoOverrideTheme: noDefaultCupertinoThemeData,
      ),
      home: const SplashScreen(),
    );
  }
}
