import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
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
  var numb1  = 1;
  var numb2 = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(getRandom);
              },
              child: Image.asset('images/dice$numb1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(getRandom);
              },
              child: Image.asset('images/dice$numb2.png'),
            ),
          ),
        ],
      ),
    );
  }

  getRandom(){
    numb1 = Random().nextInt(6) + 1;
    numb2 = Random().nextInt(6) + 1;
  }

}