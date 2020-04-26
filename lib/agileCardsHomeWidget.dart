import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/dataValues.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:rating_dialog/rating_dialog.dart';

class AgileCardsHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataText> dataText1 = DataValues().getAgileValues();

    var dlw = DataListWidget(
      dataText: dataText1,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Agile Cards'), actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            color: Colors.blue[700],
            onPressed: () {
              show(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            color: Colors.blue[700],
            onPressed: () {
              showAboutDialog(context);
            },
          ),
        ]),
        body: SingleChildScrollView(
          child: dlw,
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }

  void show(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon: const Icon(
              Icons.star,
              size: 100,
              color: Colors.blue,
            ), // set your own image/icon widget
            title: "Enjoying Agile Cards?",
            description: "Tap a star to give your rating.",
            submitButton: "SUBMIT",
            // alternativeButton: "Contact us instead?", // optional
            positiveComment: "I'm delighted! 😍😍😍", // optional
            negativeComment: "I'm so sad! 😭😭😭", // optional
            accentColor: Colors.blue, // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
              LaunchReview.launch();
            },
          );
        });
  }

  void showAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text("About Agile Cards")),
            content: Text("A quick primer about Agile Values and Principles \nThis is the first version of the App. Future versions will cover other specific Agile and Lean s/w development frameworks"),
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
