import 'package:flutter/material.dart';
import 'package:my_messenger/tabs/chats.dart';
import 'package:my_messenger/tabs/discover.dart';
import 'package:my_messenger/tabs/people.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _currentIndex = 0;

  final tabs = [
    Chats(),
    People(),
    DIscover(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: tabs[_currentIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "People",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_circle),
            label: "Discover",
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}