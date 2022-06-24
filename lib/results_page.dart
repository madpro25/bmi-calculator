// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calc = ModalRoute.of(context)!.settings.arguments as CalculatorBrain;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: double.infinity),
                      Text(
                        calc.getResult(calc.calculateBMI()),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 3.0,
                            color: Color(0xFF22E67B)),
                      ),
                      Text(
                        calc.calculateBMI().toStringAsFixed(1),
                        style: kNumberTextStyle.copyWith(
                          fontSize: 100.0,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Normal BMI range:",
                        style: kLabelTextStyle,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "18.5 - 25 kg/m2",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "You have a normal body weight. Good job!",
                        style: TextStyle(
                          fontSize: 19.0,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/', arguments: calc);
        },
        child: BottomAppBar(
          child: Padding(
            padding: EdgeInsets.all(22.5),
            child: Text(
              "RE-CALCULATE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
