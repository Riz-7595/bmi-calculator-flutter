import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result_page.dart';
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
  num height = 150;
  num weight = 60;
  num age = 20;

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
                        : kInactiveCardColor,
                  ),
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
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle.copyWith(
                      height: 2,
                    ),
                  ),
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
                      value: height.toDouble(),
                      min: 100,
                      max: 200,
                      divisions: 100,
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
                  child: MyCard(
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onTap: () {
                                setState(
                                  () {
                                    weight--;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 12),
                            RoundIconButton(
                              onTap: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onTap: () {
                                setState(
                                  () {
                                    age--;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 12),
                            RoundIconButton(
                              onTap: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage();
                  },
                ),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 64,
              margin: EdgeInsets.only(top: 15),
              color: kSecondaryColor,
            ),
          )
        ],
      ),
    );
  }
}
