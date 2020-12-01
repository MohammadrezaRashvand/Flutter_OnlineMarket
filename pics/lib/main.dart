import 'package:flutter/material.dart';
import 'package:pics/screens/splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Online Market",
      theme: ThemeData(
        primaryColor: Color(0xFFF90808),
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
