import 'package:agile_cards/dataCardWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';

class DataListWidget extends StatelessWidget {
  DataListWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final List<DataText> dataText;

  @override
  Widget build(BuildContext context) {
    var dataValues = dataText.take(4);
    var dataPrinciples = dataText.sublist(4);

    var headerAgileValues = "Agile Values";
    var headerAgilePrinciples = "Agile Principles";

    var cardList = [
      DataCardWidget(headerCard: headerAgileValues, dataCard: dataValues),
      DataCardWidget(
          headerCard: headerAgilePrinciples, dataCard: dataPrinciples),
    ];

    return Column(
      children: cardList,
    );
  }
}
