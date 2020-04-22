import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/widgetsPage.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AgileCardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    List<DataText> dataText1 = getAgileValues();

    ItemPositionsListener.create();
    var dlw = DataListWidget(
      dataText: dataText1,
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Agile Cards'), actions: <Widget>[
          IconButton(
            icon: Icon(choices[0].icon),
            color: choices[0].color,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WidgetsPage()));
              
            },
          ),
          // action button
          IconButton(
            icon: Icon(choices[1].icon),
            color: choices[0].color,
            onPressed: () {
              dlw.itemScrollController.jumpTo(
                index: 1,
              );
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
      DataText(iconPrinciple, ['Define Value',' ']),
      DataText(iconPrinciple, ['Map the Value Stream',' ']),
      DataText(iconPrinciple, ['Create Flow',' ']),
      DataText(iconPrinciple, ['Establish Pull',' ']),    
      DataText(iconPrinciple, ['Pursue Perfection',' ']),    
    ];
    return dataText1;
  }
}

class Choice {
  const Choice({this.title, this.icon, this.color = Colors.blue});

  final String title;
  final IconData icon;

  final color;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home, color: Colors.pink),
  const Choice(title: 'Rate', icon: Icons.details, color: Colors.pink),
];
