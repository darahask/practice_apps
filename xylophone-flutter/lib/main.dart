import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Expanded(
               child: FlatButton(
                 color: Colors.red,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note1.wav');
                 },
               ),
             ),
             Expanded(
               child: FlatButton(
                 color: Colors.orange,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note2.wav');
                 },
               ),
             ),
             Expanded(
               child: FlatButton(
                 color: Colors.yellow,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note3.wav');
                 },
               ),
             ),
             Expanded(
               child: FlatButton(
                 color: Colors.lightGreen,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note4.wav');
                 },
               ),
             ),
             Expanded(
               child: FlatButton(
                 color: Colors.green,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note5.wav');
                 },
               ),
             ),
             Expanded(
               child: FlatButton(
                 color: Colors.blue,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note6.wav');
                 },
               ),
             ),
             Expanded(
               child: FlatButton(
                 color: Colors.purple,
                 child: Container(),
                 onPressed: (){
                   final play = AudioCache();
                   play.play('note7.wav');
                 },
               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}
