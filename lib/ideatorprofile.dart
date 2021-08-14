import 'package:YUREKA/ideator2.dart';
import 'package:YUREKA/ideatorlist.dart';
import 'package:YUREKA/slidable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ideatorProfile extends StatefulWidget {
  final String text = "Heuristic Development";

  @override
  _ideatorProfileState createState() => _ideatorProfileState();
}

class _ideatorProfileState extends State<ideatorProfile> {
  int applicants = 3;
  OverlayEntry floatingDropdown;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('to be given'),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                  colors: [Colors.white, Colors.cyan.shade100]),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),

                Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/jessica.jpg'),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jessica Park',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Roboto Slab",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Roboto Slab",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),

                SizedBox(
                  height: 25,
                ),

                Text(
                  'Above all, a keen learner!',
                  style: TextStyle(
                      color: Colors.black12,
                      fontFamily: "Roboto Slab",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 25,
                ),

                Text(
                  'Existing Ideas',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Sitka Banner",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),

                // This trailing comm

                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    ExpansionTile(
                      trailing: SizedBox.shrink(),
                      title: SlidableWidget(
                        onDismissed: (SlidableAction action) {},
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 21.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/heuristic (1).png',
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(width: 30.0),
                                Text(
                                  widget.text,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sitka Banner',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[600],
                                    offset: Offset(4.0, 4.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0)
                              ]),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "$applicants Applicants",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 18,
                                    color: Color(0xff4A4A4A),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/daniel.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Daniel Lee",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/jessica.jpg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Anna Broulet",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/josh.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Josh Yoo",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xff000000),
                                    fontFamily: 'Roboto Slab',
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ideator_list()));
                                },
                              ),
                              SizedBox(
                                height: 1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      trailing: SizedBox.shrink(),
                      title: SlidableWidget(
                        onDismissed: (SlidableAction action) {},
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 21.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/heuristic (1).png',
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(width: 30.0),
                                Text(
                                  widget.text,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sitka Banner',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[600],
                                    offset: Offset(4.0, 4.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0)
                              ]),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "$applicants Applicants",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 18,
                                    color: Color(0xff4A4A4A),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/daniel.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Daniel Lee",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/jessica.jpg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Anna Broulet",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/josh.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Josh Yoo",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xff000000),
                                    fontFamily: 'Roboto Slab',
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ideator_list()));
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      trailing: SizedBox.shrink(),
                      title: SlidableWidget(
                        onDismissed: (SlidableAction action) {},
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 21.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/heuristic (1).png',
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(width: 30.0),
                                Text(
                                  widget.text,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sitka Banner',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[600],
                                    offset: Offset(4.0, 4.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0)
                              ]),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "$applicants Applicants",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 18,
                                    color: Color(0xff4A4A4A),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/daniel.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Daniel Lee",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/jessica.jpg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Anna Broulet",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/josh.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Josh Yoo",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xff000000),
                                    fontFamily: 'Roboto Slab',
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ideator_list()));
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      trailing: SizedBox.shrink(),
                      title: SlidableWidget(
                        onDismissed: (SlidableAction action) {},
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 21.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/heuristic (1).png',
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(width: 30.0),
                                Text(
                                  widget.text,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Sitka Banner',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[600],
                                    offset: Offset(4.0, 4.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0)
                              ]),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "$applicants Applicants",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontSize: 18,
                                    color: Color(0xff4A4A4A),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/daniel.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Daniel Lee",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/jessica.jpg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Anna Broulet",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 100,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/josh.jpeg'),
                                    radius: 25,
                                  ),
                                  SizedBox(width: 30.0),
                                  Text(
                                    "Josh Yoo",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Color(0xff707070),
                                      fontFamily: 'Roboto Slab',
                                    ),
                                  ),
                                ],
                              ),
                              TextButton(
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xff000000),
                                    fontFamily: 'Roboto Slab',
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ideator_list()));
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipOval(
                        child: Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/add.png'),
                            ),
                          ),
                          child: FlatButton(
                            padding: EdgeInsets.all(0.0),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ideator3()));
                            },
                            child: null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
