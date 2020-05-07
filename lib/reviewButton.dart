import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:rating_dialog/rating_dialog.dart';

class ReviewButton extends StatelessWidget {
  const ReviewButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.star),
      color: Colors.blue[700],
      onPressed: () {
        show(context);
      },
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
}
