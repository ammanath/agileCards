import 'package:agile_cards/dataText.dart';
import 'package:flutter/material.dart';

class DataValues{
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
      DataText(iconPrinciple, ['Define Value', ' ']),
      DataText(iconPrinciple, ['Map the Value Stream', ' ']),
      DataText(iconPrinciple, ['Create Flow', ' ']),
      DataText(iconPrinciple, ['Establish Pull', ' ']),
      DataText(iconPrinciple, ['Pursue Perfection', ' ']),
    ];
    return dataText1;
  }



}

