import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final CupertinoTabController controller; 

  const Page2(this.controller);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Column(
        children: <Widget>[
          Container(
            child: Text(
              'Tab2',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          FlatButton(
            color: Colors.lightGreen,
            child: Text('Go to Tab1 Page2 (TODO)'),
            onPressed: () {
              // TODO I want this to go to Tab1 Page2
              this.controller.index = 0;
              Navigator.of(context).pushNamed('page1b');
            },
          )
        ],
      ),
    );
  }
}
