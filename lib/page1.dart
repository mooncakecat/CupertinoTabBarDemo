import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  Page1();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            'page1',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
        FlatButton(
          child: Text('Go to page 1b'),
          onPressed: () {
            Navigator.pushNamed(context, 'page1b');
          },
        )
      ],
    );
  }
}
