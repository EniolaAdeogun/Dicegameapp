import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  LeftDiceNumber = Random().nextInt(6) + 1;
                  RightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      RightDiceNumber = Random().nextInt(6) + 1;
                      LeftDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$RightDiceNumber.png')))
        ],
      ),
    );
  }
}
