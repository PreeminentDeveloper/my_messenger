import 'package:flutter/material.dart';
import 'package:my_messenger/model/message_model.dart';

class OnlineStory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 20.0),
      // color: Colors.blue,
      height: 100.0,
      child: ListView.builder(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: online.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  index == 0 ?
                  Container(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 26.0,
                          backgroundColor: Colors.grey.shade200,
                          child: Icon(Icons.add, color: Colors.black, size: 32.0,),
                        ),
                      ],
                    )
                  ):
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: online[index].hasStory ? BoxDecoration(
                            border: Border.all(color: Colors.blueAccent, width: 3),
                            borderRadius: BorderRadius.circular(35.0),
                          ):
                          BoxDecoration(),
                          child: online[index].hasStory ? CircleAvatar(
                            minRadius: 24.0,
                            backgroundImage: AssetImage(online[index].imageUrl),
                          ):
                          CircleAvatar(
                            minRadius: 28.0,
                            backgroundImage: AssetImage(online[index].imageUrl),
                          )
                        ),
                        Positioned(
                          bottom: 2,
                          right: 0,
                          child: Visibility(
                            visible: online[index].isOnline,
                            child: Container(
                              width: 18.0,
                              height: 18.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                border: Border.all(color: Colors.white, width: 3),
                                color: Colors.green.shade500,
                              ),
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  index != 0 ? Text(
                    online[index].firstName,
                    style: TextStyle(color: Colors.grey),
                  ):
                  Text(
                    online[index].firstName,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
