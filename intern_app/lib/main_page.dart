import 'package:flutter/material.dart';
import 'package:intern_app/chat.dart';
import 'package:intern_app/make_add.dart';
import 'package:intern_app/my_adds.dart';
import 'package:intern_app/profile.dart';
import 'mpage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int num = 0;
  final widgets = [MainPage2(),CreateAdd(),MyAdds(),Chat(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: widgets[num],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.red,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_quilt,
              color: Colors.white,
            ),
            title: Text('Create Ad'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: Text('My Ads'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text('Profile'),
          ),
        ],
        onTap: (a){
          setState(() {
            num = a;
          });
        },
        currentIndex: num,
        selectedItemColor: Colors.greenAccent,
      ),
    );
  }
}
