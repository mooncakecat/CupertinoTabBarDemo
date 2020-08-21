import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;

  const BaseContainer(this.child);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      !ModalRoute.of(context).canPop ? Container() : _getBackArrow(context),
      this.child
    ]);
  }

  Widget _getBackArrow(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.arrow_back,
        color: Theme.of(context).textTheme.headline5.color,
      ),
      onTap: () => Navigator.of(context).pop(),
    );
  }
}
