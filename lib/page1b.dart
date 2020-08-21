import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/material.dart';

class Page1b extends StatelessWidget {
  Page1b();

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Column(
        children: <Widget>[
          Container(
            child: Text('Page1b', style: Theme.of(context).textTheme.display1),
          ),
          FlatButton(
            child: Text('Go to page 1c'),
            onPressed: () {
              Navigator.pushNamed(context, 'page1c');
            },
          )
        ],
      ),
    );
  }
}
