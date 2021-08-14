import 'package:YUREKA/questionair1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ideator3 extends StatefulWidget {
  @override
  _ideator3State createState() => _ideator3State();
}

class _ideator3State extends State<ideator3> {
  bool Is_editing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              height: 1000,
              decoration: new BoxDecoration(
                  /*image: DecorationImage(
                image: AssetImage('assets/Rectangle 33.png'),
                fit: BoxFit.fill,
              ),*/
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.white, Colors.cyan[200]])),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage('assets/add.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Add a new Idea',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          'ORGANIZATION',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Image(
                          image: AssetImage('assets/color-pencil.png'),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: Text(
                          'IDEA',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Image(
                          image: AssetImage('assets/color-pencil.png'),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 170),
                        child: Text(
                          'COMPTETION',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Image(
                          image: AssetImage('assets/color-pencil.png'),
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          'UNIQUE SELLING POINT',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Image(
                          image: AssetImage('assets/color-pencil.png'),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Text(
                          'REQUIREMENTS',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            suffixIcon: Image(
                          image: AssetImage('assets/color-pencil.png'),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('ADD MORE',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('PHOTOS',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.add_box_outlined,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RaisedButton(
                    child: Text(
                      'ASSES YOUR PROGRESS',
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => questionair1()));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
