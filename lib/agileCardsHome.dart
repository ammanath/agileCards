import 'package:agile_cards/agileCard.dart';
import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataText> dataText1 = getAgileValues();
        return Scaffold(
          appBar: AppBar(
            title: Text('Agile Cards'),
          ),
          body: DataWidget(dataText: dataText1,),
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

  List<DataText> getAgileValues() {
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
    List<DataText> dataText1 = [
      DataText(iconCard,[primaryWorkingText, secondaryWorkingText]),
      DataText(iconRespond,[primaryRespondingText, secondaryRespondingText]),
      DataText(iconIndividual,[primaryIndvText, secondaryIndvText]),
      DataText(iconCustomer,[primaryCustText, secondaryCustText,'Some addtional text']),
    ];
    return dataText1;
  }
}

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key key,
    @required this.dataText,
  }) : super(key: key);


  final List<DataText> dataText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:dataText.map((element) => AgileCard(dataText: element)).toList(),
      );
  }
}
