import 'package:agile_cards/dataCardWidget.dart';
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
    var last;
      last = itemDataList.last;
      itemDataList.forEach((element) {
        if (title == '') {
          title = element.title;
        }
        if (title == element.title) {
          temp.add(element);
        }
        if ((title != element.title) || element == last) {
          dataCardWidget = DataCardWidget(itemList: temp);
          widgets.add(dataCardWidget);
          temp = [];
          title = element.title;
          temp.add(element);
        }
      });
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
