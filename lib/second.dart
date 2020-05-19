import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1c25),
      bottomNavigationBar: Container(
          height: 60,
          //
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: TextField(
            autofocus: false,
            decoration: InputDecoration(
                labelText: "Add a comment...",
                // suffixIcon: IconButton(icon: Icon(Icons.send),onPressed: (){debugPrint("send");},),
                prefixIcon: Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        // color: Colors.yellow,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("images/pic5.jpeg"),
                            fit: BoxFit.fill)))

                ),
          )),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
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
                              Icons.keyboard_backspace,
                              color: Colors.white,
                            ),
                            onPressed: () {Navigator.pop(context);},
                          ),
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 5),
                                  image: DecorationImage(
                                      image: AssetImage("images/pic5.jpeg"),
                                      fit: BoxFit.fill),
                                  color: Colors.red,
                                  //     // borderRadius: BorderRadius.all(Radius.circular(90))
                                  shape: BoxShape.circle)),
                          // SizedBox(width: 5),
                          // Text("Janet Deo"),
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
                          Text("123K", style: TextStyle(color: Colors.white)),
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
                          Text("15", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 15),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //  SizedBox(height:10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 5),
                              image: DecorationImage(
                                  image: AssetImage("images/pic5.jpeg"),
                                  fit: BoxFit.fill),
                              color: Colors.red,
                              //     // borderRadius: BorderRadius.all(Radius.circular(90))
                              shape: BoxShape.circle)),
                      SizedBox(width: 8),
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
              // SizedBox(height:15),
              Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //  SizedBox(height:10),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 5),
                              image: DecorationImage(
                                  image: AssetImage("images/pic5.jpeg"),
                                  fit: BoxFit.fill),
                              color: Colors.red,
                              //     // borderRadius: BorderRadius.all(Radius.circular(90))
                              shape: BoxShape.circle)),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Janet Martine",
                              style: TextStyle(color: Colors.grey)),
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

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     IconButton(
              //       icon: Icon(Icons.keyboard_backspace),
              //       onPressed: () {},
              //     ),
              //     Container(
              //         height: 40,
              //         width: 40,
              //         decoration: BoxDecoration(
              //             border: Border.all(color: Colors.white, width: 5),
              //             image: DecorationImage(
              //                 image: AssetImage("images/pic5.jpeg"),
              //                 fit: BoxFit.fill),
              //             color: Colors.red,
              //             //     // borderRadius: BorderRadius.all(Radius.circular(90))
              //             shape: BoxShape.circle)),
              //     IconButton(
              //       icon: Icon(Icons.more_horiz),
              //       onPressed: () {},
              //     ),
              //   ],
              // )
            ],
          )
        ],
      )),
    );
  }
}
