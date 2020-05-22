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
      comment: 15, imageUrl: "images/4.jpeg", like: 123, name: "Janet Deo"),
  BodyDetail(
      comment: 25,
      imageUrl: "images/2.jpeg",
      like: 143,
      name: "Paul Deo"),
      BodyDetail(
      comment: 25,
      imageUrl: "images/1.jpeg",
      like: 153,
      name: "Ralco Deo"),
      BodyDetail(
      comment: 25,
      imageUrl: "images/3.jpeg",
      like: 150,
      name: "Latin Deo"),
];
