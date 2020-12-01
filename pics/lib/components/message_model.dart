import 'package:flutter/material.dart';
import 'package:pics/components/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: "Current User",
  imageUrl: "assets/images/greg.jpg",
);

final User greg = User(
  id: 1,
  name: "Greg",
  imageUrl: "assets/images/greg.jpg",
);

final User james = User(
  id: 2,
  name: "James",
  imageUrl: "assets/images/james.jpg",
);

final User john = User(
  id: 3,
  name: "John",
  imageUrl: "assets/images/john.jpg",
);

final User olivia = User(
  id: 4,
  name: "Olivia",
  imageUrl: "assets/images/olivia.jpg",
);

final User sam = User(
  id: 5,
  name: "Sam",
  imageUrl: "assets/images/sam.jpg",
);

final User sophia = User(
  id: 6,
  name: "Sophia",
  imageUrl: "assets/images/sophia.jpg",
);

final User steven = User(
  id: 7,
  name: "Steven",
  imageUrl: "assets/images/steven.jpg",
);

List<User> favorites = [sam, steven, olivia, john, greg];

List<Message> chats = [
  Message(
    sender: james,
    time: "5:30 pm",
    text: "Hey , How's it going ? What did you do today?",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: "4:30 pm",
    text: "How are you",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: "3:30 pm",
    text: "What's app?",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: "1:30 pm",
    text: "Hello, What do you say?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: "12:30",
    text: "Come here",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: "11:30 AM",
    text: "goodBye",
    isLiked: false,
    unread: false,
  ),
];
