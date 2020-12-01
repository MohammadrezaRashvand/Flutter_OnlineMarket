import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pics/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFFF90808)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.green,
                            size: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "آنلاین مارکت",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text(
                        "بزرگترین بازار اینترنتی شهرتون\n یک جا به جای همه جا \t  ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
