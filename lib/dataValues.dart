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
              'Agile software development comprises various approaches to software development under which requirements and solutions evolve through the collaborative effort of self-organizing and cross-functional teams and their customers. It advocates adaptive planning, evolutionary development, early delivery, and continual improvement, and it encourages rapid and flexible response to change. The term agile was popularized, in this context, by the Manifesto for Agile Software Development.',
          refIcon: getRandomIcon(true),
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
              'Delving deeper than what they value in a project, the writers of the manifesto agreed on 12 principles, which further defines how to run an agile project. These offer more concrete examples of how agile software development should take place.',
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

    var extremePrinciples = [
      ItemData(
          title: 'Extreme Principles',
          primaryText: '',
          secondaryText: '',
          description:
              'The principles that form the basis of XP are based on the XP values and are intended to foster decisions in a software development project. The principles are intended to be more concrete than the values and more easily translated to guidance in a practical situation.',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Extreme Principles',
          primaryText: 'Feedback',
          secondaryText:
              'is most useful if it is done frequently and promptly. Minimal delay between an action and its feedback is critical to learning and making changes. Unit tests contribute to the rapid feedback principle.',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Principles',
          primaryText: 'Assuming simplicity',
          secondaryText:
              'This is about treating every problem as if its solution were "extremely simple".',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Principles',
          primaryText: 'Embracing change',
          secondaryText:
              'is about not working against changes but embracing them.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var extremePractices = [
      ItemData(
          title: 'Extreme Practices',
          primaryText: '',
          secondaryText: '',
          description:
              'Extreme programming has been described as having 12 practices, grouped into four areas',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Extreme Practices',
          primaryText: 'Fine-scale feedback',
          secondaryText:
              'Pair programming , Planning game , Test-driven development , Whole team',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Practices',
          primaryText: 'Continuous process',
          secondaryText:
              'Continuous integration, Refactoring or design improvement, Small releases',
          description: '',
          refIcon: null,
          type: 'card'),
      ItemData(
          title: 'Extreme Practices',
          primaryText: 'Shared understanding',
          secondaryText:
              'Coding standards, Collective code ownership, Simple design, System metaphor',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Practices',
          primaryText: 'Programmer welfare',
          secondaryText: 'Sustainable pace',
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
              'There are 29 rules given in the categories of planning, managing, designing, coding, and testing. Two categories: "Rules of Engagement" which dictate the environment in which software development can take place effectively, and "Rules of Play" which define the minute-by-minute activities and rules within the framework of the Rules of Engagement.',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Coding',
          secondaryText:
              'The customer is always available, Code the unit test first, Only one pair integrates code at a time, Leave optimization until last, No overtime',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Testing',
          secondaryText:
              'All code must have unit tests, All code must pass all unit tests before it can be released, When a bug is found, tests are created before the bug is addressed (a bug is not an error in logic; it is a test that was not written), Acceptance tests are run often and the results are published',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Planning',
          secondaryText:
              'Business and the team are the players. Story cards are used. User stories are written by the customer on story cards. Estimates are given by the team based on the story cards. Short (frequent small) releases are to be planned. Release schedule is to be created with mutual agreement. The next release is to be divided into iterations.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Managing',
          secondaryText:
              'The team is given a dedicated open workspace. Enable Pair Programming. Sustainable pace is to be set - No OVertime. Enforce the rules of the planning game. Ensure Communication among the Team. Discourage Communication that is − not helpful not at the right time done in great detail. Make people move around. Measure the actual times and convey to team periodically so that each team member will know the performance as against prediction.',
          description: '',
          refIcon: getRandomIcon(true),
          type: 'card'),
      ItemData(
          title: 'Extreme Rules',
          primaryText: 'Designing',
          secondaryText:
              'Choose a metaphor for the system and evolve it as development progresses. Keep the design simple. No functionality is added early. Put as much architecture in place now as you need to meet your current needs, and trust that you can put more in later Refactor whenever and wherever possible.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var scrumWorkflow = [
      ItemData(
          title: 'Scrum Workflows',
          primaryText: '',
          secondaryText: '',
          description:
              'Scrum is a lightweight, iterative and incremental framework for managing complex work. ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Scrum Workflows',
          primaryText: 'Sprint',
          secondaryText:
              'A sprint (also known as iteration or timebox) is the basic unit of development in Scrum. The sprint is a timeboxed effort',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Workflows',
          primaryText: 'Sprint planning',
          secondaryText:
              'Mutually discuss and agree on the scope of work that is intended to be done during that sprint',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Workflows',
          primaryText: 'Daily scrum',
          secondaryText:
              'Each day during a sprint, the team holds a daily scrum (or stand-up) ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Workflows',
          primaryText: 'Sprint review',
          secondaryText:
              'At the end of a sprint, the team reviews the work that was completed and the planned work that was not completed',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Workflows',
          primaryText: 'Sprint retrospective',
          secondaryText:
              'The team: Reflects on the past sprint and Identifies and agrees on continuous process improvement actions',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Workflows',
          primaryText: 'Backlog refinement',
          secondaryText:
              'formerly called grooming is the ongoing process of reviewing backlog items and checking that they are appropriately prepared & ordered',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var scrumArtifacts = [
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: '',
          secondaryText: '',
          description:
              'Scrum is a lightweight, iterative and incremental framework for managing complex work. ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Product backlog',
          secondaryText:
              'is a breakdown of work to be done and contains an ordered list of product requirements that a scrum team maintains for a product.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Sprint backlog',
          secondaryText:
              ' is the list of work the development team must address during the next sprint.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Sprint burndown chart',
          secondaryText:
              'is a publicly displayed chart showing remaining work in the sprint backlog.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Release burn-up chart',
          secondaryText:
              'is a way for the team to provide visibility and track progress toward a release. Updated at the end of each sprint, it shows progress toward delivering a forecast scope. ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Definition of ready (DoR)',
          secondaryText:
              'The start criteria to determine whether the specifications and inputs are set enough to start the work item',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Definition of done (DoD)',
          secondaryText:
              'The exit-criteria to determine whether a product backlog item is complete. In many cases, the DoD requires that all regression tests be successful.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Velocity',
          secondaryText:
              'The total effort a team is capable of in a sprint. The number is derived by evaluating the work (typically in user story points) completed in the last sprint. ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Spike',
          secondaryText:
              'A time-boxed period used to research a concept or create a simple prototype. Unlike sprint commitments, spikes may or may not deliver tangible, shippable, valuable functionality. ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum Artifacts',
          primaryText: 'Tracer bullet',
          secondaryText:
              'Also called a drone spike, a tracer bullet is a spike with the current architecture, current technology set, current set of best practices that result in production quality code. It might just be a very narrow implementation of the functionality but is not throwaway code.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var scrumValues = [
      ItemData(
          title: 'Scrum values',
          primaryText: '',
          secondaryText: '',
          description:
              'Scrum is a feedback-driven empirical approach which is, like all empirical process control, underpinned by the three pillars of transparency, inspection, and adaptation. ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Scrum values',
          primaryText: 'Commitment',
          secondaryText:
              'Team members individually commit to achieving their team goals, each and every sprint.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum values',
          primaryText: 'Courage',
          secondaryText:
              'Team members know they have the courage to work through conflict and challenges together so that they can do the right thing.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum values',
          primaryText: 'Focus',
          secondaryText:
              ' Team members focus exclusively on their team goals and the sprint backlog; there should be no work done other than through their backlog.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum values',
          primaryText: 'Openness',
          secondaryText:
              'Team members and their stakeholders agree to be transparent about their work and any challenges they face.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Scrum values',
          primaryText: 'Respect',
          secondaryText:
              'Team members respect each other to be technically capable and to work with good intent.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var solidPrinciples = [
      ItemData(
          title: 'SOLID Principles',
          primaryText: '',
          secondaryText: '',
          description:
              'These 5 principles were introduced by Robert C. Martin. The intention of these principles is to make software designs more understandable, easier to maintain and easier to extend. ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'SOLID Principles',
          primaryText: 'Single Responsibility Principle (SRP)',
          secondaryText:
              '“a class should have only one reason to change” which means every class should have a single responsibility or single job or single purpose. ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'SOLID Principles',
          primaryText: 'Open/Closed Principle',
          secondaryText:
              '“software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification” which means you should be able to extend a class behavior, without modifying it.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'SOLID Principles',
          primaryText: 'Liskov’s Substitution Principle (LSP)',
          secondaryText:
              '“Derived or child classes must be substitutable for their base or parent classes“. This principle ensures that any class that is the child of a parent class should be usable in place of its parent without any unexpected behavior.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'SOLID Principles',
          primaryText: 'Interface Segregation Principle (ISP)',
          secondaryText:
              '“do not force any client to implement an interface which is irrelevant to them“',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'SOLID Principles',
          primaryText: 'Dependency Inversion Principle (DIP)',
          secondaryText:
              'High-level modules/classes should not depend on low-level modules/classes. Both should depend upon abstractions.Abstractions should not depend upon details. Details should depend upon abstractions.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var leanPrinciples = [
      ItemData(
          title: 'Lean principles',
          primaryText: '',
          secondaryText: '',
          description:
              'Lean Software Development (LSD) is an agile framework based on optimizing development time and resources, eliminating waste, and ultimately delivering only what the product needs. "Think big, act small, fail fast; learn rapidly"',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Eliminate waste',
          secondaryText:
              'Lean philosophy regards everything not adding value to the customer as waste (muda). ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Amplify learning',
          secondaryText:
              'The learning process is sped up by usage of short iteration cycles – each one coupled with refactoring and integration testing.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Decide as late as possible',
          secondaryText:
              'delaying decisions as much as possible until they can be made based on facts and not on uncertain assumptions and predictions. ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Deliver as fast as possible',
          secondaryText:
              'in order to see and analyze the output at the earliest.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Empower the team',
          secondaryText:
              'Respecting people and acknowledging their work is one way to empower the team.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Build integrity in',
          secondaryText:
              'The customer needs to have an overall experience of the System. ',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Lean principles',
          primaryText: 'Optimize the Whole',
          secondaryText:
              'Modern software systems are not simply the sum of their parts, but also the product of their interactions.',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var designThinkingPhases = [
      ItemData(
          title: 'Design Thinking',
          primaryText: '',
          secondaryText: '',
          description:
              'Design Thinking is an iterative process in which we seek to understand the user, challenge assumptions, and redefine problems in an attempt to identify alternative strategies and solutions that might not be instantly apparent with our initial level of understanding. ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'Design Thinking',
          primaryText: 'Empathise',
          secondaryText: 'with your users',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Design Thinking',
          primaryText: 'Define',
          secondaryText: 'your users’ needs, their problem, and your insights',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Design Thinking',
          primaryText: 'Ideate',
          secondaryText:
              'by challenging assumptions and creating ideas for innovative solutions',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Design Thinking',
          primaryText: 'Prototype',
          secondaryText: 'to start creating solutions',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
      ItemData(
          title: 'Design Thinking',
          primaryText: 'Test',
          secondaryText: 'try Your Solutions Out',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    var dummy = [
      ItemData(
          title: 'TTT',
          primaryText: '',
          secondaryText: '',
          description: 'ddd ',
          refIcon: getRandomIcon(),
          type: 'title'),
      ItemData(
          title: 'TTT',
          primaryText: 'ppp',
          secondaryText: '“ssss',
          description: '',
          refIcon: getRandomIcon(),
          type: 'card'),
    ];

    return agileValues +
        agilePrinciples +
        scrumWorkflow +
        scrumArtifacts +
        scrumValues +
        leanPrinciples +
        designThinkingPhases +
        extremeActivities +
        extremeValues +
        extremePrinciples +
        extremePractices +
        extremeRules +
        solidPrinciples;
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
