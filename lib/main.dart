import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange[800],
        ),
        backgroundColor: Colors.deepOrange[600],
        body: const DiceBody(),
      ),
    );
  }
}

class DiceBody extends StatefulWidget {
  const DiceBody({Key? key}) : super(key: key);

  @override
  State<DiceBody> createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  var leftDice = 1;
  var rightDice = 2;

  void changeDiceNumber() {
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          )
        ],
      ),
    );
  }
}
