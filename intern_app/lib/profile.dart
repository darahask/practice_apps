import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      appBar: AppBar(
        title: Center(
          child: Text('PROFILE'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://cdn2.momjunction.com/wp-content/uploads/2015/04/Top-188-Latest-And-Modern-Hindu-Baby-Girl-Names.jpg'),
            ),
            Text(
              'Vaishnavi',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
                width: 200,
                child: Divider(
                  thickness: 1,
                  color: Colors.black.withAlpha(140),
                )),
            Text(
              'Change Profile',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,

                  activeColor: Colors.black,
                  onChanged: (i) {
                    setState(() {
                      a = i;
                    });
                  },
                  groupValue: a,
                ),
                Text(
                  'Male',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Radio(
                  value: 1,
                  activeColor: Colors.black,
                  onChanged: (i) {
                    setState(() {
                      a = i;
                    });
                  },
                  groupValue: a,
                ),
                Text(
                  'Female',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black
                  ),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black.withAlpha(140),
            ),
            Text(
              'Email: *',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
            Text(
              'cherry@gmail.com',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black.withAlpha(140),
            ),
            Text(
              'Phone: *',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black
              ),
            ),
            Text(
              '+91794576569',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black.withAlpha(140),
            ),
            Text(
              'City: *',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black
              ),
            ),
            Text(
              'Chennai',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black.withAlpha(140),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                  Navigator.pop(context);
              },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            GestureDetector(
              onTap: (){
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text(
                'Back to Home',
                style: TextStyle(color: Colors.black,fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
