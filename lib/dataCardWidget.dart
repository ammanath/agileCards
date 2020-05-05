import 'package:agile_cards/agileCardWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/headerTextWidget.dart';
import 'package:agile_cards/itemData.dart';
import 'package:flutter/material.dart';

class DataCardWidget extends StatelessWidget {
  const DataCardWidget({
    Key key,
    @required this.dataCardList,
  }) : super(key: key);

  final Iterable<ItemData> dataCardList;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.lightBlue[800],
        child: Column(
          children: List.from([
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 18.0, 0.0, 6.0),
              child: HeaderTextWidget(headerCardTitle: dataCardList.first.title),
            )
          ])
            ..addAll(dataCardList
                .map((element) => Text(element.primaryText))//AgileCardWidget(dataText: element))
                .toList()),
        ));
  }
}
