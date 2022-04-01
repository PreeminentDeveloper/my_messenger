import 'package:flutter/material.dart';
import 'package:my_messenger/Screens/search.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => Search()));
        },
        child: Container(
            height: 45.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 24.0,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 17.0, color: Colors.black54),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
