import 'package:agile_cards/agileCardsHome.dart';
import 'package:agile_cards/widgetsPage.dart';
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
      //home: AgileCardsHome(),
      home:WidgetsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


