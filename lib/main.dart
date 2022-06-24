// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/results_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0D22),
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: Colors.white,
          inactiveTrackColor: kSliderInactiveColor,
          thumbColor: kSliderActiveThumbColor,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          overlayColor: kSliderActiveOverlayColor,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        bottomAppBarColor: Color(0xFFEB1555),
      ),
    );
  }

  const BMICalculator({Key? key}) : super(key: key);
}
