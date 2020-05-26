
import 'package:agile_cards/itemData.dart';
import 'package:agile_cards/popUpTextWidget.dart';
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({
    Key key,
    @required this.itemData,
  }) : super(key: key);

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Text(
        itemData.title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue[100],
          fontSize: 20,
          letterSpacing: 8.0,
          fontWeight: FontWeight.bold,
        ),
        textWidthBasis: TextWidthBasis.parent,
            
      ),
      onTap: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return PopUpTextWidget( dataText: itemData,);
                        }),
                  },
    );
  }
}

