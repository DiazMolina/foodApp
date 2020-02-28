import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipes/pages/home_page.dart';
void main(){

  runApp(

    MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
