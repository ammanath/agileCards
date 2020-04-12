import 'package:flutter/material.dart';


class AgileCard extends StatelessWidget {
  const AgileCard({
    Key key,
    @required this.iconCard,
    @required this.primaryText,
    @required this.secondaryText,
  }) : super(key: key);

  final IconData iconCard;
  final String primaryText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          child: ListTile(
            leading: Icon(iconCard),
        title: Text.rich(
          TextSpan(
              text: primaryText,
              style: TextStyle(fontSize: 25, color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                    text: secondaryText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ))
              ]),
        ),
      ),
      color: Colors.orange,
              ),
            ),
    );
  }
}
