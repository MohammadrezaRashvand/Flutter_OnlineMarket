import 'package:flutter/material.dart';
import 'package:pics/screens/home_screen.dart';
import 'package:pics/screens/register_screen.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF90808),
                  Color(0xFFF91616),
                  Color(0xFFF82727),
                  Color(0xFFF93535),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 120.0, horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Form(
                    child: Theme(
                      data: ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.deepOrange,
                        inputDecorationTheme: InputDecorationTheme(
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(60.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                            ),
                            MaterialButton(
                              height: 60.0,
                              minWidth: 500.0,
                              color: Colors.white,
                              textColor: Color(0xFFF90808),
                              child: Text(
                                "پرداخت آنلاین",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              ),
                              splashColor: Colors.redAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60.0),
                            ),
                            MaterialButton(
                              height: 60.0,
                              minWidth: 500.0,
                              color: Colors.white,
                              textColor: Color(0xFFF90808),
                              child: Text(
                                "پرداخت در محل",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              ),
                              splashColor: Colors.redAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
