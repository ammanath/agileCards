import 'package:flutter/material.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryWorkingText = 'Working Software ';
    var secondaryWorkingText = "over comprehensive documentation.";
    String primaryRespondingText = 'Responding to change ';
    String secondaryRespondingText ='over following a plan';
    String primaryIndvText ='Individuals and interactions ';
    String secondaryIndvText='over processes and tools';
    String primaryCustText ='Customer collaboration ';
    String secondaryCustText ='over contract negotiaion';
    var iconCard = Icons.work;
    var iconRespond = Icons.poll;
    var iconIndividual = Icons.people;
    var iconCustomer = Icons.person;
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

class AgileCard extends StatelessWidget {
  const AgileCard({
    Key key,
    @required this.iconCard,
    @required this.primaryText,
    @required this.secondaryText,
  }) : super(key: key);

  final IconData iconCard;
  final String primaryText;
  final String secondaryText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          child: ListTile(
            leading: Icon(iconCard),
        title: Text.rich(
          TextSpan(
              text: primaryText,
              style: TextStyle(fontSize: 25, color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                    text: secondaryText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    ))
              ]),
        ),
      ),
      color: Colors.orange,
              ),
            ),
    );
  }
}
