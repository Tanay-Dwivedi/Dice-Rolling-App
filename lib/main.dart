import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicyee Rolll'),
          backgroundColor: Colors.amber[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicePressed = 1;
  int rightDicePressed = 6;

  void changingDiceFace() {
    leftDicePressed = Random().nextInt(6) + 1;
    rightDicePressed = Random().nextInt(6) + 1;
    print(
        'The dice number showing on left is $leftDicePressed and on the right is $rightDicePressed');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changingDiceFace();
                });
              },
              child: Image.asset('images/dice$leftDicePressed.png'),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changingDiceFace();
                  });
                },
                child: Image.asset('images/dice$rightDicePressed.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
