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
            child:
                Text('Tab1 Page2', style: Theme.of(context).textTheme.headline4),
          ),
          FlatButton(
            color: Colors.lightGreen,
            child: Text('Go to Tab1 Page3'),
            onPressed: () {
              Navigator.pushNamed(context, 'page1c');
            },
          )
        ],
      ),
    );
  }
}
