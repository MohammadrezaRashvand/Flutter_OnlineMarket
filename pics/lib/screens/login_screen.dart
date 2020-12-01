import 'package:flutter/material.dart';
import 'package:pics/screens/home_screen.dart';
import 'package:pics/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
              padding: EdgeInsets.symmetric(vertical: 120.0, horizontal: 40.0),
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
                  ),
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
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "ایمیل را وارد کنید",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "رمز عبور خود را وارد کنید",
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
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
                                "ورود",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20.0,
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
                              padding: const EdgeInsets.only(top: 20.0),
                            ),
                            MaterialButton(
                              height: 40.0,
                              minWidth: 200.0,
                              color: Colors.white,
                              textColor: Color(0xFFF90808),
                              child: Text(
                                "ساخت حساب کاربری",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20.0,
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
