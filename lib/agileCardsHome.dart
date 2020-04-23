import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/dataValues.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataText> dataText1 = DataValues().getAgileValues();

    ItemPositionsListener.create();
    var dlw = DataListWidget(
      dataText: dataText1,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Agile Cards'), actions: <Widget>[
          
        ]),
        body: SingleChildScrollView(
          child: dlw,
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }

}

