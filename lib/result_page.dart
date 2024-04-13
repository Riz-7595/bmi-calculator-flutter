import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'brain.dart';
import 'custom_widgets.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.brain});

  final Brain brain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 64),
            child: Center(
              child: Text(
                "Result",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: MyCard(
              color: kInactiveCardColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    brain.bmiText().toUpperCase(),
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    brain.bmiResult(),
                    style:
                        const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    brain.bmiDesc(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Color(0xFFD7D5DC),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 2),
              height: 80,
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
          ),
        ],
      ),
    );
  }
}
