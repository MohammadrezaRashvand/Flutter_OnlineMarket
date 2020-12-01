import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'stories_screen.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.15,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 60.0,
                            width: 80.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(
                                  "https://www.forsatnet.ir/images/news/35123642623623634724623632643742373.gif",
                                ),
                              ),
                            ),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            "دی جی کالا",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    "https://5.imimg.com/data5/TM/KI/MY-12468898/sublimation-blank-tshirts-500x500.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new IconButton(
                            icon: Icon(Icons.favorite_border),
                            iconSize: 30.0,
                            splashColor: Colors.redAccent,
                            onPressed: () {},
                          ),
                          new SizedBox(
                            width: 8.0,
                          ),
                          new IconButton(
                            icon: Icon(Icons.comment),
                            iconSize: 30.0,
                            splashColor: Colors.redAccent,
                            onPressed: () {},
                          ),
                          new SizedBox(
                            width: 8.0,
                          ),
                          new IconButton(
                            icon: Icon(Icons.send),
                            iconSize: 30.0,
                            splashColor: Colors.redAccent,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.add_shopping_cart),
                        iconSize: 30.0,
                        splashColor: Colors.redAccent,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by pawankumar, pk and 528,331 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X_400x400.jpg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
    );
  }
}
