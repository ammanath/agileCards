import 'package:agile_cards/dataText.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpTextDisplay extends StatelessWidget {
  const PopUpTextDisplay({
    Key key,
    @required this.dataText,
  }) : super(key: key);

  final DataText dataText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
