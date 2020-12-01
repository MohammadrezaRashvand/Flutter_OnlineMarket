import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    " پرفروش ترین ",
    " ارزانترین ",
    " گرانترین ",
    " محبوب ترین ",
    " تخفیف دار ترین ",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == selectedIndex
                      ? Color(0xFFFF0000)
                      : Color(0xFFF95252),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
