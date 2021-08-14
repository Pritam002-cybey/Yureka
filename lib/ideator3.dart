import 'package:flutter/material.dart';
import 'package:YUREKA/ideator1_animation.dart';
import 'package:YUREKA/ideator_card.dart';

class ideator1 extends StatefulWidget {
  @override
  _ideator1State createState() => _ideator1State();
}

class _ideator1State extends State<ideator1> {
  final List<List<String>> products = [
    ['assets/ui-ux-banner.png', 'Organization', '100 \$'],
    ['assets/ui-ux-banner.png', 'Organization', '120 \$'],
    ['assets/ui-ux-banner.png', 'Organization', '80 \$']
  ];

  int currentIndex = 0;

  void _next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void _preve() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Container(
        //height: MediaQuery.of(context).size.height,
        //color: Colors.amber,
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: FadeAnimation(
                  .8,
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(products[currentIndex][0]),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.grey[700].withOpacity(.9),
                            Colors.grey.withOpacity(.0),
                          ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FadeAnimation(
                              1,
                              Container(
                                width: 90,
                                margin: EdgeInsets.only(bottom: 60),
                                child: Row(
                                  children: _buildIndicator(),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: Transform.translate(
                offset: Offset(0, -40),
                child: FadeAnimation(
                    1,
                    SingleChildScrollView(
                      child: Container(
                        width: double.infinity,
                        //height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2))),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  FadeAnimation(
                                      1.3,
                                      Text(
                                        "Organization",
                                        //products[currentIndex][1],
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  //Row(
                                  // children: <Widget>[

                                  IconButton(
                                    color: Colors.cyanAccent.shade700,
                                    highlightColor: Colors.cyan.shade50,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  ideator_card()));
                                    },
                                    icon: ImageIcon(
                                      AssetImage("assets/edit@2x.png"),
                                      size: 37,
                                      //color: Colors.cyan,
                                    ),
                                  )
                                  // ],
                                  //),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                                indent: 20,
                                endIndent: 20,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 1,
                                itemBuilder: (context, index) => ideator_card(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Colors.grey[800] : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
