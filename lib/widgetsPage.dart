import 'dart:math';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

const numberOfItems = 5001;
const minItemHeight = 20.0;
const maxItemHeight = 150.0;
const scrollDuration = Duration(seconds: 2);

class WidgetsPage extends StatelessWidget {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agile Cards'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.next_week),
          color: Colors.amber,
          onPressed: () {
            itemScrollController.jumpTo(
              index: 15,
            );
          },
        ),
      ]),
      body: Container(
        color: Colors.teal,
        child: ScrollablePositionedList.builder(
          itemCount: 50,
          itemBuilder: (context, index) => Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Card(
                color: Colors.blue,
                child: (Text('Item $index')),
              ),
            ),
          )),
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
        ),
      ),
    );
  }
}
