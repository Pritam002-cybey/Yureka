import 'package:YUREKA/ideator2.dart';
import 'package:YUREKA/ideator3.dart';
import 'package:YUREKA/ideator_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

enum SlidableAction { archive, share, more, delete }

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;

  const SlidableWidget({
    @required this.child,
    @required this.onDismissed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: SlidableDrawerActionPane(),
        child: child,
        secondaryActions: <Widget>[
          IconButton(
            color: Colors.black,
            highlightColor: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ideator1()));
            },
            icon: ImageIcon(
              AssetImage("assets/edit@2x.png"),
              size: 40,
              //color: Colors.cyan,
            ),
          ),
          IconSlideAction(
            caption: 'Delete',
            color: Colors.grey,
            icon: Icons.delete,
            onTap: () => onDismissed(SlidableAction.delete),
          ),
        ],
      );
}
