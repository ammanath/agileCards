
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({
    Key key,
    @required this.headerCardTitle,
  }) : super(key: key);

  final String headerCardTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      headerCardTitle,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.blue[200],
        fontSize: 24,
        letterSpacing: 8.0,
        fontWeight: FontWeight.bold,
      ),
      textWidthBasis: TextWidthBasis.parent,
    );
  }
}

