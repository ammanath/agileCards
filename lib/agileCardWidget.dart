import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/popUpTextWidget.dart';
import 'package:flutter/material.dart';
class AgileCardWidget extends StatelessWidget {
  const AgileCardWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final DataText dataText;

  @override
  Widget build(BuildContext context) {
    var secondaryStyle = TextStyle(
      fontSize: 14,
      color: Colors.black38,
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          child: ListTile(
              leading: Icon(dataText.icon),
              title: Text.rich(
                TextSpan(
                  text: dataText.primaryText,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                  children: getSecondaryText(secondaryStyle, dataText),
                ),
              ),
              onTap: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return PopUpTextWidget(dataText: dataText);
                        }),
                  }),
          color: Colors.lightBlue[600],
        ),
      ),
    );
  }

  List<InlineSpan> getSecondaryText(
      TextStyle secondaryStyle, DataText dataText1) {
    return dataText1.textList
        .map((elt) => (TextSpan(text: elt, style: secondaryStyle)))
        .toList()
          ..removeAt(0);

  }
}
