import 'package:agile_cards/dataText.dart';
import 'package:agile_cards/itemData.dart';
import 'package:flutter/material.dart';

class DataValues {
  List<DataText> getAgileValues() {
    const primaryWorkingText = 'Working Software ';
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

//TODO: We need to refactor the DataText to be replaced by ItemData data structure.
  List<ItemData> getItemValues() {
    var agileValues = [
      ItemData(
          title: 'Agile Values',
          primaryText: '',
          secondaryText: '',
          description: '',
          refIcon: Icons.details,
          type: 'title'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Working Software',
          secondaryText: 'over comprehensive documentation.',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Responding to change',
          secondaryText: 'over following a plan.',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Individuals and interactions',
          secondaryText: 'over processes and tools.',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Agile Values',
          primaryText: 'Customer collaboration',
          secondaryText: 'over contract negotiaion.',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
    ];

    var agilePrinciples = [
      ItemData(
          title: 'Agile Principles',
          primaryText: '',
          secondaryText: '',
          description: '',
          refIcon: Icons.details,
          type: 'title'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Satisfying customers',
          secondaryText:
              'through early and continuos delivery of valuable work',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Breaking big work down',
          secondaryText: 'into smaller tasks that can be completed quickly',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Agile Principles',
          primaryText: 'Recognizing',
          secondaryText: 'that the best work emerges from self-organized teams',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
    ];

    var extremeActivities = [
      ItemData(
          title: 'Extreme Activities',
          primaryText: '',
          secondaryText: '',
          description: '',
          refIcon: Icons.details,
          type: 'title'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Coding',
          secondaryText:
              'The only truly important product of the system development process is code',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Testing',
          secondaryText:
              'If a little testing can eliminate a few flaws, a lot of testing can eliminate many more flaws.',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Listening',
          secondaryText:
              'Programmers must listen to what the customers need the system to do, what "business logic" is needed.',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
      ItemData(
          title: 'Extreme Activities',
          primaryText: 'Designing',
          secondaryText:
              'Good design will avoid lots of dependencies within a system; this means that changing one part of the system will not affect other parts of the system',
          description: '',
          refIcon: Icons.details,
          type: 'card'),
    ];
    return agileValues + agilePrinciples + extremeActivities;
  }
}
