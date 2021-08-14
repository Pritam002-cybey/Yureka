import 'dart:ui';

import 'package:YUREKA/addseeker.dart';
import 'package:YUREKA/ideator_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ideator_filter.dart';
import 'ideatordata.dart';
import 'package:flutter/cupertino.dart';

class ideator_list extends StatefulWidget {
  @override
  _ideator_listState createState() => _ideator_listState();
}

class _ideator_listState extends State<ideator_list> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;
  String dropdownValue = 'Filtered';
  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = ID_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["domain"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " ${post["experience"]}  years",
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white70,
                  child: ClipOval(
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2012/04/11/12/19/light-bulb-27898_960_720.png',
                    ),
                  ),
                ),
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 1],
                colors: [Colors.white, Colors.cyan.shade200]),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              new Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 16.0),
                child: new RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Text(
                      "FILTER",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterChipDisplay()));
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer ? 0 : categoryHeight,
                    child: categoriesScroller),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 16.0),
                child: new RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: Text(
                      "ADD SEEKER",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => addseeker()));
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Dismissible(
                          key: UniqueKey(),
                          child: Opacity(
                            opacity: scale,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..scale(scale, scale),
                              alignment: Alignment.bottomCenter,
                              child: Align(
                                  heightFactor: 0.7,
                                  alignment: Alignment.topCenter,
                                  child: itemsData[index]),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2020/04/25/12/14/tech-5090539_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Machine\nLearning",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2020/03/02/21/54/editorial-4897078_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "App \nDeveloper",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 Person",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/04/15/12/23/internet-of-things-4129218_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Internet\nof things",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/12/12/01/54/cyber-glasses-4689599_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Augmented\nReality",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/03/30/15/11/deer-3275594_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Graphic\nDesigning",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Web\nDesigning",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/05/04/20/01/website-3374825_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "UX\nDesigning",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2012/03/01/15/43/brain-20424_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Data\nScience",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 180,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/01/22/22/11/cloud-computing-2001090_1280.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Cloud\nArchitecture",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 Person",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
