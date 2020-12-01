import 'package:flutter/material.dart';
import 'package:pics/components/category_selector_screen.dart';
import 'package:pics/components/dateSearch_screen.dart';
import 'package:pics/components/post_screen.dart';
import 'package:pics/screens/shoping_screen.dart';
import 'formatList_screen.dart';
import 'home_screen.dart';

class SearchingScreen extends StatefulWidget {
  @override
  _SearchingScreenState createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF90808),
        title: Text(
          "جست و جو",
          style: TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {
                    showSearch(context: context, delegate: DateSearch()),
                  })
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Container(
            height: 400,
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new BottomAppBar(
          color: Color(0xFFF90808),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white60,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopingScreen(),
                  ),
                ),
                splashColor: Colors.redAccent,
              ),
              new IconButton(
                icon: Icon(
                  Icons.format_list_numbered,
                  color: Colors.white60,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListScreen(),
                  ),
                ),
                splashColor: Colors.redAccent,
              ),
              new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListScreen(),
                  ),
                ),
                splashColor: Colors.redAccent,
              ),
              new IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white60,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
                splashColor: Colors.redAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
