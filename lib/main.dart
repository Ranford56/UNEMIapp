import 'package:flutter/material.dart';
import 'dart:ui';
//theme data
import 'package:unemi/utils/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      home: Scaffold(),
      title: 'UNEMI',
      theme: ThemeData(
        canvasColor: COLOR_SECONDARY,
        textTheme: screenWidth < 500 ? ACUA_S : ACUA_M,
      ),
    );
  }
}