import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pics/components/message_model.dart';
import 'package:pics/components/user_model.dart';

class ChatModel extends StatefulWidget {
  final User user;
  ChatModel({this.user});

  @override
  _ChatModelState createState() => _ChatModelState();
}

class _ChatModelState extends State<ChatModel> {
  _buildMessage(Message message, bool isMe) {
    return Row(
      children: <Widget>[
        Container(
          margin: isMe
              ? EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 80.0,
                )
              : EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  right: 80.0,
                ),
          padding: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.time,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                message.text,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 28.0,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
                child: ListView.builder(
                  reverse: true,
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message message = chats[index];
                    final bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
