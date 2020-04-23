import 'package:agile_cards/agileCardsHomeWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AgileCardsApp());
}

class AgileCardsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agile Cards',
      
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AgileCardsHomeWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}


