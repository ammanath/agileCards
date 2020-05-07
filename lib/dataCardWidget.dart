import 'package:agile_cards/agileCardWidget.dart';
import 'package:agile_cards/headerTextWidget.dart';
import 'package:agile_cards/itemData.dart';
import 'package:flutter/material.dart';

class DataCardWidget extends StatelessWidget {
  const DataCardWidget({
    Key key,
    @required this.itemList,
  }) : super(key: key);

  final Iterable<ItemData> itemList;

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    var defaultIcon;
    itemList.forEach((element) {
      if (element.type == 'title') {
        children.add(Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 18.0, 0.0, 8.0),
          child: HeaderTextWidget(headerCardTitle: element.title),
        ));
        defaultIcon = element.refIcon;
      } else if (element.type == 'card') {
        if(element.refIcon==null){
          element.refIcon=defaultIcon;
        }
        children.add(AgileCardWidget(itemData: element));
      }
    });
    return Card(
        color: Colors.lightBlue[800], child: Column(children: children));
  }
}
