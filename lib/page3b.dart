import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/material.dart';

class Page3b extends StatelessWidget {
  const Page3b({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Container(
        child: Text('Tab3 Page2', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
