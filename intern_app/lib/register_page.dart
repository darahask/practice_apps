import 'package:flutter/material.dart';
import 'package:intern_app/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/login.jpeg'),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'REGISTER',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white.withAlpha(255),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2
                          ),
                        ),
                        Text(
                          "It's 100% Free",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: 130,
                    width: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Text(
                            'SEARCH',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 48,
                                fontFamily: 'mainpage',
                                letterSpacing: 1.2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Text(
                            'INDIA',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'mainpage',
                                letterSpacing: 1.2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              new InputWidget(name: 'Name',data: Icons.person,),
              SizedBox(height: 10,),
              new InputWidget(name: 'Email',data: Icons.mail,),
              SizedBox(height: 10,),
              new InputWidget(name: 'Password',data: Icons.lock,),
              SizedBox(height: 10,),
              new InputWidget(name: 'Mobile',data: Icons.phone_android,),
              SizedBox(height: 10,),
              new InputWidget(name: 'City',data: Icons.location_on,),
              SizedBox(height: 10,),
              new InputWidget(name: 'Confirm Password',data: Icons.lock,),
              SizedBox(height: 10,),
              Text('Forgot Password?'),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white.withAlpha(150),
                  ),
                  child: Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {

  final name,data;
  InputWidget({this.name,this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        onChanged: (val) {},
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withAlpha(125),
          hintText: name,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          icon: Icon(
            data,
            size: 40,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
