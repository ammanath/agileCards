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
//TODO: Need to get the right fonts and colors for this. 
//TODO: Change the OK font size
  void showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text("About Agile Cards")),
            content: Text(
                "A quick primer about Agile Software Development Methodologies and some key principles for cutting top quality code. \n If you have any suggestions about the app, then I will be much obliged if you drop me a note : swapp@fintechthoughtleaders.com \n \n Thanks for trying my app! \n- Brijesh"),
            elevation: 24.0,
            backgroundColor: Colors.blue[100],
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
