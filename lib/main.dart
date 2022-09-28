import 'package:flutter/material.dart';
import 'package:nnnapp/GetApiCall/getApiCalls.dart';
import 'package:nnnapp/MyApp/loginPage/loginPage.dart';

import 'MyApp/loginPage/favScreen.dart';
import 'MyApp/loginPage/reelsScreen.dart';
import 'UiScreen.dart';
import 'calApp/calApp.dart';
import 'imagesScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:LoginPage(),
    );
  }
}
