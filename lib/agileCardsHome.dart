import 'package:flutter/material.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agile Cards'),
      ),
      body: Center(
        child: Container(
          color: Colors.red[200],
          width: 200,
          height: 200,
          child: Center(
            child: Text(
              'Some Text',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.navigate_before),
            title: new Text('Previous'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
            
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next), 
              title: Text('Next'))
        ],
        backgroundColor: Colors.red[200],
      ),
    );
  }
}
