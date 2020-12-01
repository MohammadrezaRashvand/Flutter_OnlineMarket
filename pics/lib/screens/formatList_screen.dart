import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'home_screen.dart';
import 'searching_screen.dart';
import 'shoping_screen.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
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
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                height: 10.0,
              )
            : Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 300.0,
                      child: Text(
                        "فهرست",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "کالای دیجیتال",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "مد و پوشاک",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "آرایشی و بهداشتی",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "خوردنی و آشامیدنی",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "کتاب و لوازم التحریر",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "لوازم ورزشی و مسافرتی",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "ابزار ها و لوازم فنی",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "سیسمونی و لوازم کودک",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 450,
                          color: Colors.redAccent,
                          child: Center(
                            child: Text(
                              "لوازم یدکی خودرو",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
