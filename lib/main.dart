import 'package:flutter/material.dart';
import 'package:task6two/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Listview',
      theme: ThemeData(
       primarySwatch: Colors.grey

      ),
     home: CalculatorScreen (),
    );
  }
}

