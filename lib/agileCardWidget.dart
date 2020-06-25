import 'package:agile_cards/itemData.dart';
import 'package:agile_cards/popUpTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AgileCardWidget extends StatelessWidget {
  const AgileCardWidget({
    Key key,
    @required this.itemData,
  }) : super(key: key);   

  final ItemData itemData;

  @override
  Widget build(BuildContext context) {
    var secondaryStyle = TextStyle(
      fontSize: 16,
      color: Colors.black45,
    );
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        child: Container(
          child: ListTile(   
              leading: itemData.refIcon,
              title: Text.rich(
                TextSpan(
                  text: itemData.primaryText,
                  style: GoogleFonts.amarante(fontSize: 18, color: Colors.black,), //TextStyle(fontSize: 18, color: Colors.black),
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
                  },
                  ),
          color: Colors.lightBlue[600],
        ),
      ),
    );
  }
}
