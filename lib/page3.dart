import 'package:cupertino_tab_bar/base_widget.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      Column(children: [
        Text('Tab3 Page1', style: Theme.of(context).textTheme.headline4),
        FlatButton(
          color: Colors.lightGreen,
          child: Text('Go to Tab3 Page2'),
          onPressed: () {
            Navigator.pushNamed(context, 'page3b');
          },
        ),
      ]),
    );
  }
}
