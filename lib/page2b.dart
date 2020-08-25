import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/material.dart';

class Page2b extends StatelessWidget {
  Page2b();

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Column(
        children: <Widget>[
          Container(
            child:
                Text('Tab2 Page2', style: Theme.of(context).textTheme.headline4),
          ),
        ],
      ),
    );
  }
}
