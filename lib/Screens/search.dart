import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.black, size: 35.0,)
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
      body: Container(),
    );
  }
}