import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/widgetsPage.dart';
import 'package:flutter/material.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DataText> dataText1 = getAgileValues();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Agile Cards'), actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,
              color:Colors.lightBlue,
              child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                  hintText: 'Search',
                  
                   ),
                   style:TextStyle(
                     color: Colors.white,
                   ),
                    autofocus: false,
                   )
                 ),
          ),
          IconButton(
            icon: Icon(choices[0].icon),
            tooltip: choices[0].toolTip,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>WidgetsPage()));
            },
          ),
          // action button
          IconButton(
            icon: Icon(choices[1].icon),
            onPressed: () {
              //_select(choices[1]);
            },
          ),
        ]),
        body: SingleChildScrollView(
            child: DataListWidget(
          dataText: dataText1,
        )),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }

  List<DataText> getAgileValues() {
    const primaryWorkingText = 'Working Software';
    const secondaryWorkingText = "over comprehensive documentation.";
    const primaryRespondingText = 'Responding to change ';
    const secondaryRespondingText = 'over following a   plan';
    const primaryIndvText = 'Individuals and interactions ';
    const secondaryIndvText = 'over processes and tools';
    const primaryCustText = 'Customer collaboration ';
    const secondaryCustText = 'over contract negotiaion';
    const iconCard = Icons.work;
    const iconRespond = Icons.poll;
    const iconIndividual = Icons.people;  
    const iconCustomer = Icons.person;
    const iconPrinciple = Icons.loyalty;
    List<DataText> dataText1 = [
      DataText(iconCard, [primaryWorkingText, secondaryWorkingText]),
      DataText(iconRespond, [primaryRespondingText, secondaryRespondingText]),
      DataText(iconIndividual, [primaryIndvText, secondaryIndvText]),
      DataText(iconCustomer, [primaryCustText, secondaryCustText]),
      DataText(iconPrinciple, [
        'Satisfying customers ',
        'through early and continuos delivery of valuable work'
      ]),
      DataText(iconPrinciple, [
        'Breaking big work down ',
        'into smaller tasks that can be completed quickly'
      ]),
      DataText(iconPrinciple, [
        'Recognizing ',
        'that the best work emerges from self-organized teams'
      ]),
      DataText(iconPrinciple, [
        'Providing motivated individuals ',
        'with the envt. and support they need and trusting them to get the job done'
      ]),
      DataText(iconPrinciple,
          ['Creating processes ', 'that promote sustainable efforts']),
      DataText(iconPrinciple,
          ['Maintaining a constant pace ', 'for completed work']),
      DataText(iconPrinciple,
          ['Welcoming changing requirements, ', ' even late in a project']),
      DataText(iconPrinciple, [
        'Assembling the project team and business owners ',
        'on a daily basis throughout the project'
      ]),
      DataText(iconPrinciple, [
        'Having the team reflect at regular intervals ',
        'on how to become more effective, then tuning and adjusting behaviour accordingly'
      ]),
      DataText(iconPrinciple,
          ['Measuring progress ', 'by the amount of completed work']),
      DataText(iconPrinciple, ['Continually ', 'seeking excellence']),
      DataText(
          iconPrinciple, ['Harnessing change ', 'for a competitive advantage']),
    ];
    return dataText1;
  }
}

class Choice {
  const Choice({this.title, this.icon, this.toolTip=''});

  final String title;
  final IconData icon;

  final toolTip ;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home, toolTip: 'Home'),
  const Choice(title: 'Rate', icon: Icons.rate_review),
];
