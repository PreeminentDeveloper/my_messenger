import 'package:flutter/material.dart';
import 'package:my_messenger/model/user_model.dart';

class Conversation extends StatefulWidget {

  User user;
  Conversation(this.user);
  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.blueAccent, size: 35.0,)
        ),
        title: ListTile(
          contentPadding: EdgeInsets.only(left: 0),
          leading: CircleAvatar(
            backgroundImage:
                AssetImage(widget.user.imageUrl),
          ),
          title: Text("${widget.user.firstName}", style: TextStyle(color: Colors.black)),
          subtitle: Text("Active 49m", style: TextStyle(color: Colors.grey[400], fontSize: 14),),
        ),
        actions: [
          Icon(Icons.call, color: Colors.blueAccent),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.videocam, color: Colors.blueAccent),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert, color: Colors.blueAccent),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              // padding: const EdgeInsets.only(top: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Hello MOG", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 3),
            Container(
              alignment: Alignment.topRight,
              // padding: const EdgeInsets.only(top: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Bless you", style: TextStyle(color: Colors.black)),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}