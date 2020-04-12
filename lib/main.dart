import 'package:agile_cards/agileCardsHome.dart';
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
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AgileCardsHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}


