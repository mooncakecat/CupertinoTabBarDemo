import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final CupertinoTabController controller;

  Page1(this.controller);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Column(
        children: <Widget>[
          Container(
            child: Text(
              'Tab1',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          FlatButton(
            color: Colors.lightGreen,
            child: Text('Go to Tab2 Page2'),
            onPressed: () {
              Navigator.pushNamed(context, 'page2b');
            },
          ),
          FlatButton(
            color: Colors.lightGreen,
            child: Text('Go to Tab3 Page2'),
            onPressed: () {
              Navigator.pushNamed(context, 'page3b');
            },
          )
        ],
      ),
    );
  }
}
