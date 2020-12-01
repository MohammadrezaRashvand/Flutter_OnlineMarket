import 'package:flutter/material.dart';
import 'package:pics/screens/next_register_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
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
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "شماره تماس خود را وارد کنید",
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                            ),
                            MaterialButton(
                              height: 40.0,
                              minWidth: 200.0,
                              color: Colors.white,
                              textColor: Color(0xFFF90808),
                              child: Text(
                                "ارسال",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 20.0),
                              ),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NextRegisterScreen(),
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
