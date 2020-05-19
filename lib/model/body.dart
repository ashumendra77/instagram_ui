import 'package:flutter/cupertino.dart';

class BodyDetail {
  String imageUrl;
  String name;
  int like, comment;
  BodyDetail(
      {@required this.comment,
      @required this.imageUrl,
      @required this.like,
      @required this.name});
}

List<BodyDetail> bodylist = [
  BodyDetail(
      comment: 15, imageUrl: "images/pic5.jpeg", like: 123, name: "Janet Deo"),
  BodyDetail(
      comment: 25,
      imageUrl: "images/pic5.jpeg",
      like: 143,
      name: "Ashumedra Deo"),
      BodyDetail(
      comment: 25,
      imageUrl: "images/pic5.jpeg",
      like: 153,
      name: "Kawaljeet Deo"),
      BodyDetail(
      comment: 25,
      imageUrl: "images/pic5.jpeg",
      like: 150,
      name: "Virendre Deo"),
];
