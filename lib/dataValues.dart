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
          description:
              'Agile software development comprises various approaches to software development under which requirements and solutions evolve through the collaborative effort of self-organizing and cross-functional teams and their customers. It advocates adaptive planning, evolutionary development, early delivery, and continual improvement, and it encourages rapid and flexible response to change. The term agile was popularized, in this context, by the Manifesto for Agile Software Development. The values and principles espoused in this manifesto were derived from and underpin a broad range of software development frameworks, including Scrum and Kanban.',
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
          description:
              'Agile software development comprises various approaches to software development under which requirements and solutions evolve through the collaborative effort of self-organizing and cross-functional teams and their customers. It advocates adaptive planning, evolutionary development, early delivery, and continual improvement, and it encourages rapid and flexible response to change. The term agile was popularized, in this context, by the Manifesto for Agile Software Development. The values and principles espoused in this manifesto were derived from and underpin a broad range of software development frameworks, including Scrum and Kanban.',
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
          description:
              'Extreme programming (XP) is a software development methodology which is intended to improve software quality and responsiveness to changing customer requirements. As a type of agile software development, it advocates frequent "releases" in short development cycles, which is intended to improve productivity and introduce checkpoints at which new customer requirements can be adopted.',
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

    var extremeValues = [
      ItemData(
          title: 'Extreme Values',
          primaryText: '',
          secondaryText: '',
          description:
              'Extreme programming (XP) is a software development methodology which is intended to improve software quality and responsiveness to changing customer requirements. As a type of agile software development, it advocates frequent "releases" in short development cycles, which is intended to improve productivity and introduce checkpoints at which new customer requirements can be adopted.',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Extreme Values',
          primaryText: 'Communication',
          secondaryText:
              'All developers have a shared view of the system which matches the view held by the users of the system',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Values',
          primaryText: 'Simplicity',
          secondaryText:
              'This is sometimes summed up as the "You aren\'t gonna need it" (YAGNI) approach.',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Values',
          primaryText: 'Feedback',
          secondaryText:
              'To quote Kent Beck, "Optimism is an occupational hazard of programming. Feedback is the treatment."',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Values',
          primaryText: 'Courage',
          secondaryText:
              'Always design and code for today and not for tomorrow. Courage to refacotr, to throw code away, to persist in solving complex problems',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Extreme Values',
          primaryText: 'Respect',
          secondaryText:
              'The respect value includes respect for others as well as self-respect.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var extremeRules = [
      ItemData(
          title: 'Extreme Rules',
          primaryText: '',
          secondaryText: '',
          description:
              'The first version of rules for XP was published in 1999 by Don Wells at the XP website. 29 rules are given in the categories of planning, managing, designing, coding, and testing. Planning, managing and designing are called out explicitly to counter claims that XP doesn\'t support those activities. Another version of XP rules was proposed by Ken Auer in XP/Agile Universe 2003. He felt XP was defined by its rules, not its practices (which are subject to more variation and ambiguity). He defined two categories: "Rules of Engagement" which dictate the environment in which software development can take place effectively, and "Rules of Play" which define the minute-by-minute activities and rules within the framework of the Rules of Engagement.',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Communication',
          secondaryText:
              'All developers have a shared view of the system which matches the view held by the users of the system',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Simplicity',
          secondaryText:
              'This is sometimes summed up as the "You aren\'t gonna need it" (YAGNI) approach.',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Feedback',
          secondaryText:
              'To quote Kent Beck, "Optimism is an occupational hazard of programming. Feedback is the treatment."',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Courage',
          secondaryText:
              'Always design and code for today and not for tomorrow. Courage to refacotr, to throw code away, to persist in solving complex problems',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Respect',
          secondaryText:
              'The respect value includes respect for others as well as self-respect.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    return agileValues +
        agilePrinciples +
        extremeActivities +
        extremeValues +
        extremeRules;
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
