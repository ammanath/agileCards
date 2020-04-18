import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class AgileCard extends StatelessWidget {
  const AgileCard({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final DataText dataText;

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
              leading: Icon(dataText.icon),
              title: Text.rich(
                TextSpan(
                  text: dataText.primaryText,
                  style: TextStyle(fontSize: 25, color: Colors.black),
                  children: getSecondaryText(secondaryStyle, dataText),
                ),
              ),
              onTap: () => {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return PopUpTextDisplay(dataText: dataText);
                        }),
                  }),
          color: Colors.lightBlue[600],
        ),
      ),
    );
  }

  List<InlineSpan> getSecondaryText(
      TextStyle secondaryStyle, DataText dataText1) {
    return dataText1.textList
        .map((elt) => (TextSpan(text: elt, style: secondaryStyle)))
        .toList()
          ..removeAt(0);

    // return <InlineSpan>[
    //               TextSpan(
    //                   text: dataText1.secondaryText,
    //                   style: secondaryStyle)
    //         ];
  }
}

class PopUpTextDisplay extends StatelessWidget {
  const PopUpTextDisplay({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final DataText dataText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        //title:Text("Value"),
        backgroundColor: Colors.blue[200],
        content: TypewriterAnimatedTextKit(
          text: ["${dataText.primaryText} ${dataText.secondaryText}"],
          totalRepeatCount: 4,
          pause: Duration(milliseconds: 1500),
          speed: Duration(milliseconds: 60),
          textStyle: GoogleFonts.vt323(
            color: Colors.blue,
            letterSpacing: .5,
            fontSize: 32,
          ),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ));
  }
}
