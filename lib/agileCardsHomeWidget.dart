import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/dataValues.dart';
import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AgileCardsHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataText> dataText1 = DataValues().getAgileValues();

    ItemPositionsListener.create();
    var dlw = DataListWidget(
      dataText: dataText1,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Agile Cards'), actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            color: Colors.blue[700],
            onPressed: (){
              show(context);
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
            // onAlternativePressed: () {
            //   print("onAlternativePressed: do something");
            //   // TODO: maybe you want the user to contact you instead of rating a bad review
            // },
          );
        });
  }

}



