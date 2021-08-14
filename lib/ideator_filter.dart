import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 1],
            colors: [Colors.white, Colors.cyan.shade100]),
      ),
      child: new Scaffold(
        body: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer("Choose needed Domain :"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Wrap(
                  spacing: 5.0,
                  runSpacing: 3.0,
                  children: <Widget>[
                    filterChipWidget(chipName: 'App Development'),
                    filterChipWidget(chipName: 'Artificial Intiligence'),
                    filterChipWidget(chipName: 'Machine Learning'),
                    filterChipWidget(chipName: 'Data Science'),
                    filterChipWidget(chipName: 'Internet of Things'),
                    filterChipWidget(chipName: 'Java Developer'),
                  ],
                )),
              ),
            ),
            Divider(
              color: Colors.blueGrey,
              height: 10.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer('Choose needed Experience :'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      filterChipWidget(chipName: '0-6 months'),
                      filterChipWidget(chipName: '7-12 months'),
                      filterChipWidget(chipName: '1-2 years'),
                      filterChipWidget(chipName: '3-5 years'),
                      filterChipWidget(chipName: '5- 10 years'),
                      filterChipWidget(chipName: '+10 years'),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.blueGrey,
              height: 10.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _titleContainer('Choose your Requirements :'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 5.0,
                    children: <Widget>[
                      filterChipWidget(chipName: 'OffShore Seeker'),
                      filterChipWidget(chipName: 'OnShore Seeker'),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.blueGrey,
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),
    );
  }
}
