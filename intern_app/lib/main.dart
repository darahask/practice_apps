import 'package:flutter/material.dart';
import 'package:intern_app/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/' : (context) => MainPage()
      },
    );
  }
}
