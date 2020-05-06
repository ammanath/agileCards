import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/itemData.dart';
import 'package:agile_cards/popUpTextWidget.dart';
import 'package:flutter/material.dart';
class AgileCardWidget extends StatelessWidget {
  const AgileCardWidget({
    Key key,
    @required this.itemData,
  }) : super(key: key);

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    var secondaryStyle = TextStyle(
      fontSize: 14,
      color: Colors.black38,
    );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          child: ListTile(
              leading: Icon(itemData.refIcon),
              title: Text.rich(
                TextSpan(
                  text: itemData.primaryText,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                  children: [TextSpan(
                    text:' ' + itemData.secondaryText ,
                    style: secondaryStyle)],
                
                ),),
              onTap: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return PopUpTextWidget( dataText: itemData,);
                        }),
                  },),
          color: Colors.lightBlue[600],
        ),
      ),
    );
  }


}
