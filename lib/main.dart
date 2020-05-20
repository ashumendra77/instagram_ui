import 'package:flutter/material.dart';
import 'package:instagram_ui/model/body.dart';
import 'package:instagram_ui/second.dart';
import 'model/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget getheader(Header headerdata) {
    return GestureDetector(
      onTap: () => debugPrint("p"),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: AssetImage(headerdata.imageurl),
                          fit: BoxFit.fill),
                      color: Colors.red,
                      shape: BoxShape.circle)),
              Positioned(
                bottom: 2,
                right: 1,
                child: Container(
                    height: 18,
                    width: 18,
                    child: Icon(Icons.add, size: 18),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle)),
              )
            ],
          ),
          SizedBox(width: 15)
        ],
      ),
    );
  }

  Widget getBody(BodyDetail bd) {
    return GestureDetector(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(bd2: bd,)));},
      child: Container(
          height: 370,
          margin: EdgeInsets.only(bottom: 15),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              image: DecorationImage(
                                  image: AssetImage(bd.imageUrl),
                                  fit: BoxFit.fill),
                              color: Colors.red,
                              shape: BoxShape.circle)),
                      SizedBox(width: 5),
                      Text(bd.name, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                      onPressed: () {})
                ],
              ),
              SizedBox(height: 8),
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bd.imageUrl,
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.fill,
                  )),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text("${bd.like}K", style: TextStyle(color: Colors.white)),
                  Container(
                      height: 18,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      )),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text("${bd.comment}", style: TextStyle(color: Colors.white))
                ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1d1c25),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Colors.orangeAccent,
                Colors.pink,
              ])),
          child: Icon(Icons.add),
        ),
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => SecondPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
          child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.home,
                  size: 26,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 26,
                  color: Colors.white,
                ),
                onPressed: () {}),
            SizedBox.shrink(),
            IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 26,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
              icon: Icon(
                Icons.person,
                size: 26,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
      )),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.near_me,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Instagram",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
                SizedBox(height: 20),
                Container(
                    height: 65,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: headerlist
                            .toList()
                            .asMap()
                            .entries
                            .map((MapEntry map) {
                          return getheader(map.value);
                        }).toList())),
                SizedBox(height: 15),
                Column(
                    children: bodylist.asMap().entries.map((MapEntry map) {
                  return getBody(map.value);
                }).toList()),

                // Column(
                //   children: <Widget>[
                //     Container(
                //       height:380,
                //       child:ListView(children: bodylist.toList().asMap().entries.map((MapEntry map){
                //         return getBody(map.value);
                //       }).toList())
                //     ),
                //   ],
                // ),
                // Container(
                //     height: 370,
                //     width: double.infinity,
                //     child: Column(
                //       children: <Widget>[
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: <Widget>[
                //             Row(
                //               children: <Widget>[
                //                 Container(
                //                     height: 40,
                //                     width: 40,
                //                     decoration: BoxDecoration(
                //                         border: Border.all(
                //                             color: Colors.white, width: 2),
                //                         image: DecorationImage(
                //                             image:
                //                                 AssetImage("images/pic5.jpeg"),
                //                             fit: BoxFit.fill),
                //                         color: Colors.red,
                //                         shape: BoxShape.circle)),
                //                 SizedBox(width: 5),
                //                 Text("Janet Deo",
                //                     style: TextStyle(color: Colors.white)),
                //               ],
                //             ),
                //             IconButton(
                //                 icon: Icon(
                //                   Icons.more_horiz,
                //                   color: Colors.grey,
                //                 ),
                //                 onPressed: () {})
                //           ],
                //         ),
                //         SizedBox(height: 8),
                //         ClipRRect(
                //             borderRadius: BorderRadius.circular(10),
                //             child: Image.asset(
                //               "images/pic5.jpeg",
                //               width: double.infinity,
                //               height: 280,
                //               fit: BoxFit.fill,
                //             )),
                //         SizedBox(height: 10),
                //         Row(
                //           children: <Widget>[
                //             Icon(
                //               Icons.favorite_border,
                //               color: Colors.white,
                //             ),
                //             SizedBox(width: 8),
                //             Text("123K", style: TextStyle(color: Colors.white)),
                //             Container(
                //                 height: 18,
                //                 child: VerticalDivider(
                //                   color: Colors.grey,
                //                   thickness: 1,
                //                 )),
                //             Icon(
                //               Icons.chat_bubble_outline,
                //               color: Colors.white,
                //             ),
                //             SizedBox(width: 8),
                //             Text("15", style: TextStyle(color: Colors.white))
                //           ],
                //         )
                //       ],
                //     )),
                // SizedBox(height: 15),
                // Container(
                //     height: 370,
                //     width: double.infinity,
                //     child: Column(
                //       children: <Widget>[
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: <Widget>[
                //             Row(
                //               children: <Widget>[
                //                 Container(
                //                     height: 40,
                //                     width: 40,
                //                     decoration: BoxDecoration(
                //                         border: Border.all(
                //                             color: Colors.white, width: 5),
                //                         image: DecorationImage(
                //                             image:
                //                                 AssetImage("images/pic5.jpeg"),
                //                             fit: BoxFit.fill),
                //                         color: Colors.red,
                //                         shape: BoxShape.circle)),
                //                 SizedBox(width: 5),
                //                 Text("Janet Deo",
                //                     style: TextStyle(color: Colors.white)),
                //               ],
                //             ),
                //             IconButton(
                //                 icon: Icon(
                //                   Icons.more_horiz,
                //                   color: Colors.grey,
                //                 ),
                //                 onPressed: () {})
                //           ],
                //         ),
                //         SizedBox(height: 8),
                //         ClipRRect(
                //             borderRadius: BorderRadius.circular(10),
                //             child: Image.asset(
                //               "images/pic5.jpeg",
                //               width: double.infinity,
                //               height: 280,
                //               fit: BoxFit.fill,
                //             )),
                //         SizedBox(height: 10),
                //         Row(
                //           children: <Widget>[
                //             Icon(
                //               Icons.favorite_border,
                //               color: Colors.white,
                //             ),
                //             SizedBox(width: 8),
                //             Text("123K", style: TextStyle(color: Colors.white)),
                //             Container(
                //                 height: 18,
                //                 child: VerticalDivider(
                //                   color: Colors.grey,
                //                   thickness: 1,
                //                 )),
                //             Icon(
                //               Icons.chat_bubble_outline,
                //               color: Colors.white,
                //             ),
                //             SizedBox(width: 8),
                //             Text("15", style: TextStyle(color: Colors.white))
                //           ],
                //         )
                //       ],
                //     )),
                SizedBox(height: 10)
              ],
            ),
          )
        ],
      )),
    );
  }
}
