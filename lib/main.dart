import 'package:flutter/material.dart';
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
  // List imageurl = [
  //   "images/pic5.jpeg",
  //   "images/pic5.jpeg",
  //   "images/pic5.jpeg",
  //   "images/pic5.jpeg",
  //   // "images/pic5.jpeg",
  // ];

  Widget getheader(Header headerdata) {
    return GestureDetector(
      onTap: () => debugPrint("p"),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5),
                      image: DecorationImage(
                          image: AssetImage(headerdata.imageurl),
                          fit: BoxFit.fill),
                      color: Colors.red,
                      // borderRadius: BorderRadius.all(Radius.circular(90))
                      shape: BoxShape.circle)),

              // if()
              Positioned(
                bottom: 2,
                right: 1,
                child: Container(
                    height: 18,
                    width: 18,
                    child: Icon(Icons.add, size: 18),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle)),
              ),
            ],
          ),
          // sizd
          SizedBox(width: 15)
        ],
      ),
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
              // borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(colors: [
                Colors.orangeAccent,
                Colors.pink,
              ])),
          child: Icon(Icons.add),
        ),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));},
        //
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
          //  decoration: BoxDecoration(border:Border.all(color: Colors.grey)),
          child: BottomAppBar(
        // notchMargin: 15,
        shape: CircularNotchedRectangle(),
        
        color: Colors.red,
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
          Column(
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
              Text(
                "Instagram",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                  // margin: EdgeInsets.only(left:10),
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
              Container(
                    height: 350,
                    width: double.infinity,
                    color: Colors.yellow,
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
                        border: Border.all(
                            color: Colors.white, width: 5),
                        image: DecorationImage(
                            image: AssetImage("images/pic5.jpeg"),
                            fit: BoxFit.fill),
                        color: Colors.red,
                        //     // borderRadius: BorderRadius.all(Radius.circular(90))
                        shape: BoxShape.circle)),
                SizedBox(width: 5),
                Text("Janet Deo"),
              ],
                            ),
                            IconButton(icon: Icon(Icons.more_horiz),
                            onPressed: (){})
                            // Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(height: 8),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
              "images/pic5.jpeg",
              width: double.infinity,
              height: 270,
              fit: BoxFit.fill,
                            )),
                        Row(
                          children: <Widget>[
                            Icon(
              Icons.favorite_border,
              color: Colors.white,
                            ),
                            Text("123K"),
                            Container(
                height: 18,
                child: VerticalDivider(
                  color: Colors.red,
                  thickness: 1,
                )),
                            Icon(Icons.chat_bubble_outline),
                            Text("15")
                          ],
                        )
                      ],
                    ))

              // Row(children: <Widget>[
              //   ListView(children:headerlist.toList().asMap().entries.map((MapEntry map){
              //     return getheader(map.value);
              //   }).toList())
              // ],)
              // Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: <Widget>[
              //   for (int i=0;i<imageurl.length;i++)
              //   Stack(
              //   children: <Widget>[
              //     Container(
              //         height: 65,
              //         width: 65,
              //         decoration: BoxDecoration(
              //             border: Border.all(color: Colors.white, width: 5),
              //             image: DecorationImage(
              //                 image: AssetImage("images/pic5.jpeg"),
              //                 fit: BoxFit.fill),
              //             color: Colors.red,
              //             // borderRadius: BorderRadius.all(Radius.circular(90))
              //             shape: BoxShape.circle)),
              //     Positioned(
              //       bottom: 2,
              //       right: 1,
              //       child: Container(
              //           height: 18,
              //           width: 18,
              //           child: Icon(Icons.add, size: 18),
              //           decoration: BoxDecoration(
              //               color: Colors.white, shape: BoxShape.circle)),
              //     ),
              //   ],
              // )
              // ],)
            ],
          )
        ],
      )),
    );
  }
}
