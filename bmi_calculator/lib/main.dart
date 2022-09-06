import 'package:flutter/material.dart';

import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData.dark().copyWith(
        // colorScheme: ColorScheme.dark().copyWith(
        //   primary: Color(0xFF0A0E21),
        //   //secondary: Colors.purple,
        //   //surface: Colors.pink,
        //   //: Colors.pink,
        // ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // textTheme: TextTheme(
        //   bodyText2: TextStyle(
        //     color: Color(0xFFFFFFFF),
        //   ),
        // ),
      ),
      home: InputPage(),
      // initialRoute: 'calculator',
      // routes: {
      //   'calculator': (context) => InputPage(),
      //   'results': (context) => ResultsPage(
      //         bmiResult: '0',
      //         resultText: '0',
      //         interpretation: '0',
      //       ),
      // },
    );
  }
}
