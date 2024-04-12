import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'custom_widgets.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Text(
              "BMI Result",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: MyCard(
              color: kInactiveCardColor,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 2),
            height: 64,
            margin: const EdgeInsets.only(top: 15),
            color: kSecondaryColor,
            child: const Center(
              child: Text(
                "RE-CALCULATE",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
