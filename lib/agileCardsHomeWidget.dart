import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/aboutButton.dart';
import 'package:agile_cards/dataValues.dart';
import 'package:agile_cards/itemData.dart';
import 'package:agile_cards/reviewButton.dart';
import 'package:flutter/material.dart';

class AgileCardsHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ItemData> listOfItems = DataValues().getItemValues();

    var dlw = DataListWidget(
      itemDataList: listOfItems,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('S/w Dev Cards'), actions: <Widget>[
          ReviewButton(),
          AboutButton(),
        ]),
        body: SingleChildScrollView(
          child: dlw,
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }
}
