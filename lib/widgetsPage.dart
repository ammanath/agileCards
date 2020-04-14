import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Text(
            'Widgets Page',
          )),
          body: Center(
            child: Container(
              color: Colors.blue,

              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: RichText(
                  text:TextSpan(text:'some text'),
                  
                  
                  ),
              ),
            ),
          )),
    );
  }
}
