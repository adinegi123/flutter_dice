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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int RightDiceno = 1;
  int LeftDiceno = 1;
  void changeDiceface() {
    setState(() {
      LeftDiceno = Random().nextInt(6) + 1;
      RightDiceno = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {
                  changeDiceface();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$LeftDiceno.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    changeDiceface();
                  },
                  child: Image.asset('images/dice$RightDiceno.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
