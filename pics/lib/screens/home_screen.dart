import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pics/screens/chat_screen.dart';
import '../components/body_screen.dart';
import 'formatList_screen.dart';
import 'shoping_screen.dart';
import 'searching_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF90808),
        centerTitle: true,
        elevation: 1.0,
        title: SizedBox(
            height: 35.0,
            width: 200.0,
            child: Text(
              "آنلاین مارکت",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            )),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(Icons.chat),
              color: Colors.white,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(),
                ),
              ),
            ),
          )
        ],
      ),
      body: InstaBody(),
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
                  color: Colors.white60,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchingScreen(),
                  ),
                ),
                splashColor: Colors.redAccent,
              ),
              new IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30.0,
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
