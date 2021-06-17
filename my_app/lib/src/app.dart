import 'package:flutter/material.dart';
import 'package:my_app/src/pages/counter_page.dart';
//import 'package:my_app/src/pages/home_page.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: CounterPage()
      )
    );
  }
}