import 'package:agile_cards/agileCard.dart';
import 'package:flutter/material.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const primaryWorkingText = 'Working Software ';
    const secondaryWorkingText = "over comprehensive documentation.";
    const primaryRespondingText = 'Responding to change ';
    const secondaryRespondingText ='over following a plan';
    const primaryIndvText ='Individuals and interactions ';
    const secondaryIndvText='over processes and tools';
    const primaryCustText ='Customer collaboration ';
    const secondaryCustText ='over contract negotiaion';
    const iconCard = Icons.work;
    const iconRespond = Icons.poll;
    const iconIndividual = Icons.people;
    const iconCustomer = Icons.person;
        return Scaffold(
          appBar: AppBar(
            title: Text('Agile Cards'),
          ),
          body: Column(
            children: <Widget>[
              AgileCard(iconCard: iconCard, primaryText: primaryWorkingText,secondaryText: secondaryWorkingText),
              AgileCard(iconCard: iconRespond, primaryText: primaryRespondingText,secondaryText: secondaryRespondingText),
              AgileCard(iconCard: iconIndividual, primaryText: primaryIndvText,secondaryText: secondaryIndvText),
              AgileCard(iconCard: iconCustomer, primaryText: primaryCustText,secondaryText: secondaryCustText),

        ],
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
              icon: Icon(Icons.navigate_next), title: Text('Next'))
        ],
        backgroundColor: Colors.red[200],
      ),
    );
  }
}
