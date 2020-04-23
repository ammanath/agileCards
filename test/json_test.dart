import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
void main(){
  
  test(
    'test json decoding',
    (){

      var jsonData = '{ "name" : "Dane", "alias" : "FilledStacks"  }';
      var parsedJson = json.decode(jsonData);
      print('${parsedJson.runtimeType} : $parsedJson');

      var name = parsedJson['name'];
      print(name);

        print(' ----------------- test decoding OVER ----------------- ');
    }

  );


}