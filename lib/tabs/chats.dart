import 'package:flutter/material.dart';
import 'package:my_messenger/Screens/conversation.dart';
import 'package:my_messenger/Screens/widget/online_story.dart';
import 'package:my_messenger/Screens/widget/search_bar.dart';
import 'package:my_messenger/model/message_model.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.normal,
              color: Colors.black),
        ),
        leading: InkWell(
          splashColor: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(currentUser.imageUrl),
            ),
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            minRadius: 18.0,
            child: Icon(
              Icons.camera_alt,
              size: 20.0,
              color: Colors.black,
            ),
            backgroundColor: Colors.grey.shade200,
          ),
          SizedBox(
            width: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              minRadius: 18.0,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.black,
              ),
              backgroundColor: Colors.grey.shade200,
            ),
          )
        ],
        iconTheme: IconThemeData(
          color: Color(0xFF18D191),
        ),
        backgroundColor: Colors.white10,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SearchBar(),
                  SizedBox(height: 4.0),
                  OnlineStory(),
                  SizedBox(height: 10.0),
                  Container(
                    // height: 335,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: chats.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            var sender = chats[index].sender;
                            print(index);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Conversation(sender)));
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage(chats[index].sender.imageUrl),
                            ),
                            title: Text(
                                "${chats[index].sender.firstName} ${chats[index].sender.lastName}"),
                            subtitle: Text(
                                "${chats[index].text}   .   ${chats[index].time}"),
                            trailing: CircleAvatar(
                              maxRadius: 8,
                              backgroundImage:
                                  AssetImage(chats[index].sender.imageUrl),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
