import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/material.dart';

class Page1c extends StatelessWidget {
  const Page1c({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Container(
        child: Text('Tab1 Page3', style: Theme.of(context).textTheme.headline4),
      ),
    );
  }
}
