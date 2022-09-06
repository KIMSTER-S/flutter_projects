import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random rnd = Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;
  void randomdice(int d) {
    setState(() {
      if (d == 1) {
        leftDiceNumber = rnd.nextInt(6) + 1;
      } else {
        rightDiceNumber = rnd.nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //leftDiceNumber = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  randomdice(1);
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  randomdice(2);
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
