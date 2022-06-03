import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBarTheme get appbarThemeData => const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );

NoDefaultCupertinoThemeData get noDefaultCupertinoThemeData =>
    const NoDefaultCupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        primaryColor: Colors.white,
      ),
    );
