import 'package:flutter/material.dart';
 import 'package:instagram_ui/model/body.dart';

class SecondPage extends StatefulWidget {
  // final instaobject;
  final BodyDetail bd2;
   SecondPage({@required this.bd2});
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1c25),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1*MediaQuery.of(context).viewInsets.bottom),
              child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10, bottom: 5),
          child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                    labelText: "Add a comment...",
                    prefixIcon: Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/pic5.jpeg"),
                                fit: BoxFit.fill)))),
              )),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Container(
                    height: 380,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    image: DecorationImage(
                                        image: AssetImage("images/pic5.jpeg"),
                                        fit: BoxFit.fill),
                                    color: Colors.red,
                                    shape: BoxShape.circle)),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/pic5.jpeg",
                              width: double.infinity,
                              height: 290,
                              fit: BoxFit.fill,
                            )),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text("${widget.bd2.like}K", style: TextStyle(color: Colors.white)),
                            Container(
                                height: 18,
                                child: VerticalDivider(
                                  color: Colors.red,
                                  thickness: 1,
                                )),
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text("${widget.bd2.comment}", style: TextStyle(color: Colors.white))
                          ],
                        )
                      ],
                    )),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                    image: AssetImage("images/pic5.jpeg"),
                                    fit: BoxFit.fill),
                                color: Colors.red,
                                shape: BoxShape.circle)),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Janet Martine",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text("Gardest by Polaar Studio",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        onPressed: () {})
                  ],
                ),
                Divider(color: Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                    image: AssetImage("images/pic5.jpeg"),
                                    fit: BoxFit.fill),
                                color: Colors.red,
                                shape: BoxShape.circle)),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Zarela Reed",
                                style: TextStyle(color: Colors.grey)),
                            Text("Great!",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
