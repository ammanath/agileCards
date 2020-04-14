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
    return Column(
      children:dataText.map((element) => AgileCard(dataText: element)).toList(),
      );
  }
}