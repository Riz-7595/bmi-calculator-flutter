import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Null;

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
                  child: MyCard(
                    child: Gender(
                      icon: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: MyCard(
                      child: Gender(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                      color: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(color: activeCardColor),
                ),
                Expanded(
                  child: MyCard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: 64,
            margin: EdgeInsets.only(top: 15),
            color: Color(0xFFEB1555),
          )
        ],
      ),
    );
  }
}
