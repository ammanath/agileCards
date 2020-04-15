import 'package:agile_cards/agileCard.dart';
import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';

class DataListWidget extends StatelessWidget {
  const DataListWidget({
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

return Column(
      children:<Widget>[ 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataCard(headerCard: headerAgileValues, dataCard: dataValues),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataCard(headerCard: headerAgilePrinciples, dataCard: dataPrinciples),
        ),
        ],

      );

    // return Column(
    //   children:dataPrinciples.map((element) => AgileCard(dataText: element)).toList(),
    //   );
  }
}

class DataCard extends StatelessWidget {
  const DataCard({
    Key key,
    @required this.headerCard,
    @required this.dataCard,
  }) : super(key: key);

  final String headerCard;
  final Iterable<DataText> dataCard;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[300],
      child: Column(
      children:
      List.from([Padding(
        padding: const EdgeInsets.fromLTRB(8.0,18.0,0.0,6.0),
        child: HeaderText(headerCardTitle: headerCard),
      )])..addAll(   dataCard.map((element) => AgileCard(dataText: element)).toList()),
    ));
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key key,
    @required this.headerCardTitle,
  }) : super(key: key);

  final String headerCardTitle;

  @override
  Widget build(BuildContext context) {
    return Text(              headerCardTitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.red[50],
                  fontSize: 20,
                  letterSpacing: 8.0,
                  fontWeight: FontWeight.bold,
                ),
                textWidthBasis: TextWidthBasis.parent,
               );
  }
}