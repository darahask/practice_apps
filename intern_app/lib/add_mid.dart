import 'package:flutter/material.dart';
import 'package:intern_app/add_fin.dart';

class MakeAdd extends StatefulWidget {
  @override
  _MakeAddState createState() => _MakeAddState();
}

class _MakeAddState extends State<MakeAdd> {

  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: Center(child: Text('Create Report')),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20,),
          Center(
            child: Text(
              'Requestor Information',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              'Name: *',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 22,

                  color: Colors.black
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              'Vaishnavi',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withAlpha(140),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              'Phone: *',
              style: TextStyle(

                  fontSize: 22,
                  color: Colors.black
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              '+91794576569',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withAlpha(140),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              'City: *',
              style: TextStyle(

                  fontSize: 22,
                  color: Colors.black
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text(
              'Chennai',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withAlpha(140),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.black,
                value: val,
                onChanged: (vary){
                  setState(() {
                    val = vary;
                  });
                },
              ),
              Text(
                'Hide Phone number ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withAlpha(140),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalAdd()));
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
                    'Next',
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
