import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

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
              // TODO
            },
          )
        ],
      ),
    );
  }
}
