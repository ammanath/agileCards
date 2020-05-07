import 'dart:math';
import 'package:agile_cards/itemData.dart';
import 'package:flutter/material.dart';

class DataValues {
  List<ItemData> getItemValues() {
    var agileValues = [
      ItemData(
          title: 'Agile Values',
          primaryText: '',
          secondaryText: '',
          description: '',
          refIcon: Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
          ),
          type: 'title'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Working Software',
          secondaryText: 'over comprehensive documentation.',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Responding to change',
          secondaryText: 'over following a plan.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Individuals and interactions',
          secondaryText: 'over processes and tools.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Customer collaboration',
          secondaryText: 'over contract negotiaion.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var agilePrinciples = [
      ItemData(
          title: 'Agile Principles',
          primaryText: '',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Satisfying customers',
          secondaryText:
              'through early and continuos delivery of valuable work',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Breaking big work down',
          secondaryText: 'into smaller tasks that can be completed quickly',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Recognizing',
          secondaryText: 'that the best work emerges from self-organized teams',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Providing motivated individuals',
          secondaryText:
              'with the envt. and support they need and trusting them to get the job done',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Creating processes',
          secondaryText: 'that promote sustainable efforts',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Maintaining a constant pace',
          secondaryText: 'for completed work',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Welcoming changing requirements,',
          secondaryText: 'even late in a project',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Assembling the project team and business owners',
          secondaryText: 'on a daily basis throughout the project',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Having the team reflect at regular intervals',
          secondaryText:
              'on how to become more effective, then tuning and adjusting behaviour accordingly',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Measuring progress',
          secondaryText: 'by the amount of completed work',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Harnessing change',
          secondaryText: 'for a competitive advantage',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var extremeActivities = [
      ItemData(
          title: 'Extreme Activities',
          primaryText: '',
          secondaryText: '',
          description: '',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Coding',
          secondaryText:
              'The only truly important product of the system development process is code',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Testing',
          secondaryText:
              'If a little testing can eliminate a few flaws, a lot of testing can eliminate many more flaws.',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Listening',
          secondaryText:
              'Programmers must listen to what the customers need the system to do, what "business logic" is needed.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Designing',
          secondaryText:
              'Good design will avoid lots of dependencies within a system; this means that changing one part of the system will not affect other parts of the system',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
    ];

    return agileValues + agilePrinciples + extremeActivities;
  }

  Icon getRandomIcon([bool randomColor]) {
    List<Color> clrs = [
      Colors.red,
      Colors.amber,
      Colors.green,
      Colors.lime,
      Colors.orange,
      Colors.black
    ];
    int rndColor = Random().nextInt(clrs.length);
    int codePoint = 59471 + Random().nextInt(100);
    var colr = randomColor == true ? clrs[rndColor] : null;

    var icon = Icon(
      IconData(codePoint, fontFamily: 'MaterialIcons'),
      color: colr,
    );
    return icon;
  }
}
