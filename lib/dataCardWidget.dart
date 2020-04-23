import 'package:agile_cards/agileCardWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/headerTextWidget.dart';
import 'package:flutter/material.dart';

class DataCardWidget extends StatelessWidget {
  const DataCardWidget({
    Key key,
    @required this.headerCard,
    @required this.dataCard,
  }) : super(key: key);

  final String headerCard;
  final Iterable<DataText> dataCard;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.lightBlue[800],
        child: Column(
          children: List.from([
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 18.0, 0.0, 6.0),
              child: HeaderTextWidget(headerCardTitle: headerCard),
            )
          ])
            ..addAll(dataCard
                .map((element) => AgileCardWidget(dataText: element))
                .toList()),
        ));
  }
}
