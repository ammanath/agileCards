import 'package:flutter/cupertino.dart';

class DataText {
  final List<String> textList;
  final IconData icon;

  DataText(this.icon, this.textList);

  String get primaryText {
    String temp ;
    temp = (textList[0]!=null)?textList[0]:'-';
    return temp;
  }

  String get secondaryText {
    String temp ;
    temp = (textList[1]!=null)?textList[1]:'-';
    return temp;
  }

}
