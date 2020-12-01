import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var icon;

  MyButton({
    Key key,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Icon(
        icon,
        size: 37.0,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[300],
        boxShadow: [
          BoxShadow(
            color: Colors.red[600],
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.red,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red[200],
              Colors.red[300],
              Colors.red[400],
              Colors.red[500],
            ],
            stops: [
              0.1,
              0.3,
              0.8,
              1,
            ]),
      ),
    );
  }
}

class ButtonTapped extends StatelessWidget {
  var icon;

  ButtonTapped({Key key, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Container(
        child: Icon(
          icon,
          size: 35,
          color: Colors.red[700],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red[300],
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.red[600],
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red[700],
                  Colors.red[600],
                  Colors.red[500],
                  Colors.red[200],
                ],
                stops: [
                  0,
                  0.1,
                  0.3,
                  1
                ])),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[300],
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.red[600],
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red[700],
            Colors.red[600],
            Colors.red[500],
            Colors.red[200],
          ],
          stops: [0, 0.1, 0.3, 1],
        ),
      ),
    );
  }
}
