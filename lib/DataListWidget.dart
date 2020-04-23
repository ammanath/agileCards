import 'package:agile_cards/dataCardWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
class DataListWidget extends StatelessWidget {
  DataListWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final List<DataText> dataText;

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
      DataCardWidget(headerCard: headerAgileValues, dataCard: dataValues),
      DataCardWidget(headerCard: headerAgilePrinciples, dataCard: dataPrinciples),
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

