import 'package:agile_cards/itemData.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpTextWidget extends StatelessWidget {
  const PopUpTextWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final ItemData dataText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.indigo[50],
        content: DisplayWidget(dataText: dataText));
  }
}

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final ItemData dataText;

  @override
  Widget build(BuildContext context) {
    if (dataText.type == 'title') {
      return normalTextDialog();
    } else if(dataText.secondaryText.length>200){
      return normalTextDialog();
    }
    else {
      return buildTypewriterAnimatedText();
    }
  }

  TypewriterAnimatedTextKit buildTypewriterAnimatedText() {
    return TypewriterAnimatedTextKit(
      text: [
        "${dataText.primaryText} ${dataText.secondaryText} ${dataText.description}"
      ],
      totalRepeatCount: 4,
      pause: Duration(milliseconds: 1500),
      speed: Duration(milliseconds: 60),
      textStyle: GoogleFonts.vt323(
        color: Colors.blue,
        letterSpacing: .5,
        fontSize: 20,
      ),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }

  Widget normalTextDialog() {
    var text = '${dataText.primaryText==''?'':dataText.primaryText + ' '}${dataText.secondaryText==''?'':dataText.secondaryText + ' '}${dataText.description}';
    return SingleChildScrollView(
      child: Text.rich(
        TextSpan(
          text: text[0],
          style: GoogleFonts.satisfy(fontSize: 22, color: Colors.blue),
          children: [
            TextSpan(
              text: text.substring(1),
              style: GoogleFonts.satisfy(fontSize: 16, color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
