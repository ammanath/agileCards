import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/aboutButton.dart';
import 'package:agile_cards/dataValues.dart';
import 'package:agile_cards/itemData.dart';
import 'package:agile_cards/reviewButton.dart';
import 'package:flutter/material.dart';

class AgileCardsHomeWidget extends StatelessWidget {
  final dataKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<ItemData> listOfItems = DataValues().getItemValues();

    var dlw = DataListWidget(
      itemDataList: listOfItems,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('S/w Dev Cards'), actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.blue[700],
            onPressed: () =>
                Scrollable.ensureVisible(dataKey.currentContext) //Top
            ,
          ),
          ReviewButton(),
          AboutButton(),
        ]),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Card(
                key: dataKey,
              ),
              dlw,
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }
}
