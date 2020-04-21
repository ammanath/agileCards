import 'package:agile_cards/agileCard.dart';
import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
class DataListWidget extends StatelessWidget {
  DataListWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final List<DataText> dataText;

  final List<String> products = [
      "Test1.1",
      "Test2",
      "Test3",
      "Test1",
      "Test2",
      "Test3",
      "Test1",
      "Test2",
      "Test3",
      "Test1",
      "Test2",
      "Test3",
      "Test1",
      "Test2",
      "Test33",
    ];
    final ItemScrollController itemScrollController = ItemScrollController();
    final ItemPositionsListener itemPositionsListener =
        ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    var dataValues = dataText.take(4);
    var dataPrinciples = dataText.sublist(4);

    var headerAgileValues = "Agile Values";
    var headerAgilePrinciples = "Agile Principles";

    var cardList = [
      DataCard(headerCard: headerAgileValues, dataCard: dataValues),
      DataCard(headerCard: headerAgilePrinciples, dataCard: dataPrinciples),
    ];

    // return Column(
    //   children: cardList,
    // );
    return Column(
      children: <Widget>[
          SizedBox(
           height: 1000,
            child: ScrollablePositionedList.builder(
              itemCount: cardList.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return  cardList[index];
              },
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            ),
          )
        ]);

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
        color: Colors.lightBlue[800],
        child: Column(
          children: List.from([
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 18.0, 0.0, 6.0),
              child: HeaderText(headerCardTitle: headerCard),
            )
          ])
            ..addAll(dataCard
                .map((element) => AgileCard(dataText: element))
                .toList()),
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
