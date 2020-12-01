import 'package:flutter/material.dart';
import 'package:pics/components/user_model.dart';

class Post {
  final User shopName;
  final double price;
  final String caption;
  final String pictureUrl;

  Post({this.shopName, this.price, this.caption, this.pictureUrl});
}

final User tina = User(
  id: 0,
  name: "شیرینی فروشی تینا",
  phoneNumber: 09907715207,
  imageUrl: "assets/shopimages/Tina.jpg",
  locationShop: "عظیمیه ، بلوار 45 متری بسیج ، شیرینی فروشی تینا ",
);

final User mahan = User(
  id: 1,
  name: "سوپر مارکت ماهان",
  phoneNumber: 09126667698,
  imageUrl: "assets/shopimages/mahan.png",
  locationShop: "عظیمیه ، بلوار 45 متری کاج ، خیابان ندای جنوبی ، کوچه حسینی",
);

final User ebrahimi = User(
  id: 2,
  name: "میوه فروشی ابراهیمی",
  phoneNumber: 091356797545,
  imageUrl: "assets/shopimages/ebrahimi.png",
  locationShop: "عظیمیه ، بلوار شریعتی ، خیابان مهران ، کوچه کمیل",
);

List<User> users = [tina, mahan, ebrahimi];

List<Post> Posts = [
  Post(
    shopName: tina,
    price: 20000,
    caption: "شیرینی یزدی",
    pictureUrl: "assets/postimages/yazdi.jpg",
  ),
  Post(
    shopName: mahan,
    price: 5000,
    caption: "چیبس",
    pictureUrl: "assets/postimages/chibs.jpg",
  ),
];
