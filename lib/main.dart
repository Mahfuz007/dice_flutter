import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset("images/dice1.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {  },
              child: Image.asset("images/dice2.png"),
            ),
          )
        ],
      ),
    );
  }
}
