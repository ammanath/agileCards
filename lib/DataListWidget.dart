import 'package:agile_cards/dataCardWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/itemData.dart';
import 'package:flutter/material.dart';

class DataListWidget extends StatelessWidget {
  DataListWidget({
    Key key,
    @required this.itemDataList,
  }) : super(key: key);

  final List<ItemData> itemDataList;

  @override
  Widget build(BuildContext context) {
    List<ItemData> temp = [];
    List<Widget> widgets = [];
    String title = '';
    var dataCardWidget;
    var last = itemDataList.last;
    itemDataList.forEach((element) {
      if (title == '') {
        title = element.title;
      }
      if (title == element.title) {
        temp.add(element);
      } 
      if ((title != element.title) || element == last) {
        //widgets.addAll(convertToWidgets(temp));
        //TODO:Add Data Card Widgets
        dataCardWidget = DataCardWidget(itemList: temp);
        widgets.add(dataCardWidget);
        temp=[];
        title = element.title;       
        temp.add(element);
      }
    });

    // var dataValues = itemDataList.take(4);
    // var dataPrinciples = itemDataList.sublist(4);

    // var headerAgileValues = "Agile Values";
    // var headerAgilePrinciples = "Agile Principles";

    // var cardList = [
    //   DataCardWidget(headerCard: headerAgileValues, dataCard: dataValues),
    //   DataCardWidget(
    //       headerCard: headerAgilePrinciples, dataCard: dataPrinciples),
    // ];

    return Column(
      children: widgets,
    );
  }

  Iterable<Widget> convertToWidgets(List<ItemData> temp) {
    List<Widget> li = [];
    temp.forEach((element) {
      li.add(Text(
          element.primaryText == '' ? element.title : element.primaryText));
    });
    return li;
  }
}
