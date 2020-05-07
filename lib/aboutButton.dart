import 'package:flutter/material.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      color: Colors.blue[700],
      onPressed: () {
        showAboutDialog(context);
      },
    );
  }

  void showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text("About Agile Cards")),
            content: Text(
                "A quick primer about Agile Values and Principles \nThis is the first version of the App. Future versions will cover other specific Agile and Lean s/w development frameworks"),
            elevation: 24.0,
            backgroundColor: Colors.blue,
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
