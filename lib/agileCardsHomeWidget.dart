import 'package:agile_cards/DataListWidget.dart';
import 'package:agile_cards/aboutButton.dart';
import 'package:agile_cards/dataValues.dart';
import 'package:agile_cards/itemData.dart';
import 'package:agile_cards/reviewButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgileCardsHomeWidget extends StatelessWidget {
  final dataKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    List<ItemData> listOfItems = DataValues().getItemValues();

    var dlw = DataListWidget(
      itemDataList: listOfItems,
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              'S/w Cards',
              style: GoogleFonts.kadwa(fontSize: 24, color: Colors.blue[700]),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.orange,
                  onPressed: () =>
                      Scrollable.ensureVisible(dataKey.currentContext) //Top
                  ),
              IconButton(
                icon: Icon(Icons.find_in_page),
                color: Colors.white,
                onPressed: () async {
                  final ItemData selected = await showSearch<ItemData>(
                      context: context, delegate: DataSearch());
                  if (selected != null) {
                    print("Item selected is: $selected");
                  }
                },
              ),
              ReviewButton(),
              AboutButton(),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Card(
                key: dataKey,
              ),
              dlw,
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[800],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<ItemData> {
  final List<ItemData> cities = DataValues()
      .getItemValues()
      .where((item) => item.type != 'title')
      .map((i) => getUpdatedItem(i))
      .toList();

  static ItemData getUpdatedItem(ItemData i) {
    i.primaryText = i.title + ' - ' + i.primaryText;
    return i;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.cancel),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    print(context.widget.toString() + query);

    return Text('Searched for $query');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<ItemData> suggestionList = query.isEmpty
        ? cities.sublist(5, 8)
        : cities
            .where((element) => element.primaryText
                ?.toLowerCase()
                ?.contains(query.toLowerCase()))
            ?.toList();
    var dlw;
    if (suggestionList != null && suggestionList.isNotEmpty) {
      dlw = DataListWidget(
        itemDataList: suggestionList,
      );
    } else {
      dlw = Text('No results found',
          style: GoogleFonts.kalam(fontSize: 22, color: Colors.blue));
    }
    return SingleChildScrollView(child: dlw);
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);
    return theme;
  }
}
