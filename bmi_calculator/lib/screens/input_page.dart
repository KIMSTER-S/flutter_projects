import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/rounded_icon_button.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 180;
  int weight = 60;
  int age = 20;
  // Color maleCardColour = inactiveContainerColour;
  // Color femaleCardColour = inactiveContainerColour;

  //1 = male , 2 = female
  // void updateColour(Gender selectedgender) {
  //   if (selectedgender == Gender.male) {
  //     if (maleCardColour == inactiveContainerColour) {
  //       maleCardColour = activeContainerColour;
  //       femaleCardColour = inactiveContainerColour;
  //     } else {
  //       maleCardColour = inactiveContainerColour;
  //     }
  //   } else {
  //     if (femaleCardColour == inactiveContainerColour) {
  //       femaleCardColour = activeContainerColour;
  //       maleCardColour = inactiveContainerColour;
  //     } else {
  //       femaleCardColour = inactiveContainerColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? kActiveContainerColour
                        : kInactiveContainerColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? kActiveContainerColour
                        : kInactiveContainerColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveContainerColour,
              cardChild: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveContainerColour,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // FloatingActionButton(
                              //   onPressed: () {
                              //     setState(
                              //       () {
                              //         if (weight > 1) {
                              //           weight--;
                              //         }
                              //       },
                              //     );
                              //   },
                              //   child: Icon(
                              //     Icons.remove,
                              //     color: Colors.white,
                              //   ),
                              //   backgroundColor: Color(0xFF4C4F5E),
                              // ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (weight > 1) {
                                        weight--;
                                      }
                                    },
                                  );
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (weight < 250) {
                                        weight++;
                                      }
                                    },
                                  );
                                },
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveContainerColour,
                    cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // FloatingActionButton(
                              //   onPressed: () {
                              //     setState(
                              //       () {
                              //         if (weight > 1) {
                              //           weight--;
                              //         }
                              //       },
                              //     );
                              //   },
                              //   child: Icon(
                              //     Icons.remove,
                              //     color: Colors.white,
                              //   ),
                              //   backgroundColor: Color(0xFF4C4F5E),
                              // ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (age > 1) {
                                        age--;
                                      }
                                    },
                                  );
                                },
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(
                                    () {
                                      if (age < 120) {
                                        age++;
                                      }
                                    },
                                  );
                                },
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              //Navigator.pushNamed(context, 'results',);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => ResultsPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
