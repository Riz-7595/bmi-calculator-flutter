import 'package:flutter/material.dart';
import 'widgets/my_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(),
                ),
                Expanded(
                  child: MyCard(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(),
                ),
                Expanded(
                  child: MyCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}