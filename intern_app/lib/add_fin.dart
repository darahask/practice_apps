import 'package:flutter/material.dart';
import 'package:intern_app/main_page.dart';
import 'package:intern_app/mpage.dart';

class FinalAdd extends StatefulWidget {
  @override
  _FinalAddState createState() => _FinalAddState();
}

class _FinalAddState extends State<FinalAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: Center(child: Text('Create Report')),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black.withAlpha(80),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Icon(Icons.add,size: 100,color: Colors.white.withAlpha(230),),
                    Text('SELECT PICTURES', style: TextStyle(fontSize: 30,color: Colors.white.withAlpha(230),),),
                  ],
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text(
              'Add Up to 5 Pictures.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),
            ),
          ),
          Center(
            child: Text(
              'Use real pictures, not Catalog.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              Navigator.popUntil(context,ModalRoute.withName('/'));
            },
            child: Center(
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.black
                ),
                child: Center(
                  child: Text(
                    'Finish',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height:20),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
