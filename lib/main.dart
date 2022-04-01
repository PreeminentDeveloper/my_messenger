import 'package:flutter/material.dart';
import 'package:my_messenger/Screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue.shade800,
      title: "Messenger",
      home: Home()
    );
  }
}