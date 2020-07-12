import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      color: Colors.lime,
      onPressed: () {
        showAboutDialog(context);
      },
    );
  }

  void showAboutDialog(BuildContext context) {
    var textAbout =
        "A brief primer about Software Development Methodologies and some key principles for developing top quality code. \n  If you have any suggestions about the app, then I will be much obliged if you drop me a note : ";
    String email = "swapp@ammanath.com";
    String version = '\nv1.15';
    String thanks = "\nThanks for trying my app! ";
    String signature = "\n\n- Brijesh";
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Center(
                child: Text("About this app",
                    style: GoogleFonts.amarante(
                      fontSize: 26,
                      color: Colors.black54,
                    ))),
            content: Text.rich(
              TextSpan(
                text: textAbout[0],
                style: GoogleFonts.satisfy(
                  color: Colors.black54,
                  letterSpacing: .5,
                  fontSize: 32,
                ),
                children: [
                  TextSpan(
                    text: textAbout.substring(1),
                    style: GoogleFonts.satisfy(
                        fontSize: 16, color: Colors.black54),
                  ),
                  TextSpan(
                    text: email,
                    style: GoogleFonts.satisfy(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: version,
                    style: GoogleFonts.satisfy(
                      fontSize: 10,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextSpan(
                    text: thanks,
                    style: GoogleFonts.satisfy(
                        fontSize: 16, color: Colors.black54),
                  ),
                  TextSpan(
                    text: signature,
                    style: GoogleFonts.dancingScript(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
            elevation: 24.0,
            backgroundColor: Colors.blue[100],
            actions: <Widget>[
              RaisedButton(
                child: Text('Ok!',
                    style: GoogleFonts.amarante(
                      fontSize: 26,
                      color: Colors.black45,
                    )),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.blue[100],
              ),
            ],
          );
        });
  }
}
