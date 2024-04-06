import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_widgets.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;
  int? height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: GenderCard(
                      icon: FontAwesomeIcons.mars,
                      title: 'MALE',
                    ),
                    color: gender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: MyCard(
                      onPress: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      child: GenderCard(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                      color: gender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumTextStyle),
                      Text(" cm", style: kLabelTextStyle),
                    ],
                  ),
                  Slider(
                      value: height!.toDouble(),
                      min: 100,
                      max: 200,
                      activeColor: kSecondaryColor,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyCard(color: kActiveCardColor),
                ),
                Expanded(
                  child: MyCard(color: kActiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            height: 64,
            margin: EdgeInsets.only(top: 15),
            color: kSecondaryColor,
          )
        ],
      ),
    );
  }
}
