import 'package:my_messenger/model/thread_model.dart';
import 'package:my_messenger/model/user_model.dart';

class Message{

  final User sender;
  final Thread thread;
  final String text;
  final String time;
  final bool unRead;

  Message({this.sender, this.thread, this.text, this.time, this.unRead});

}

//Current User - Me
final User currentUser = User(
  id: 0,
  firstName: "Oluwasegun",
  lastName: "Badaru",
  imageUrl: "lib/images/Segun.jpg",
);

//Users
final User yourStory = User(
  firstName: "Your Story",
);

final User angela = User(
  id: 1,
  firstName: "Angela",
  lastName: "Akuna",
  imageUrl: "lib/images/Angela.png",
  isOnline: true,
  hasStory: false
);

final User damilola = User(
  id: 2,
  firstName: "Damilola",
  lastName: "Dadire",
  imageUrl: "lib/images/Damilola.jpg",
  isOnline: false,
  hasStory: true
);

final User emmanuel = User(
  id: 3,
  firstName: "Emma",
  lastName: "Sax",
  imageUrl: "lib/images/Emmanuel.png",
  isOnline: true,
  hasStory: true
);

final User seun = User(
  id: 6,
  firstName: "Seun",
  lastName: "Mohammed",
  imageUrl: "lib/images/Seun.jpg",
  isOnline: true,
  hasStory: false
);

final User jeniffer = User(
  id: 5,
  firstName: "Jeniffer",
  lastName: "TSF",
  imageUrl: "lib/images/Jeniffer.png",
  isOnline: false,
  hasStory: true,
);

final User fadekemi = User(
  id: 4,
  firstName: "Fadekemi",
  lastName: "Olusola",
  imageUrl: "lib/images/Fadekemi.jpg",
  isOnline: false,
  hasStory: false
);

final User sunkanmi = User(
  id: 7,
  firstName: "Sunkanmi",
  lastName: "Alausa",
  imageUrl: "lib/images/Sunkanmi.jpg",
  isOnline: true,
  hasStory: false
);

final User taiwo = User(
  id: 8,
  firstName: "Taiwo",
  lastName: "Adejare",
  imageUrl: "lib/images/Taiwo.jpg",
  isOnline: false,
  hasStory: false
);

final User tobias = User(
  id: 9,
  firstName: "Tobias",
  lastName: "Yabatech",
  imageUrl: "lib/images/Tobias.jpg",
  isOnline: true,
  hasStory: false
);


//Online Friends
List<User> online = [yourStory, seun, damilola, emmanuel, fadekemi, jeniffer, angela, sunkanmi, taiwo, tobias];


//Chats on Home Screen
List<Message> chats = [
  Message(
    sender: angela,
    time: "12:41 AM",
    text: "Good morning ma",
    unRead: false
  ),
  Message(
    sender: damilola,
    time: "2:15 PM",
    text: "Dadire clothing...",
    unRead: false
  ),
  Message(
    sender: emmanuel,
    time: "3:03 PM",
    text: "Solar how far?",
    unRead: true
  ),
  Message(
    sender: fadekemi,
    time: "3:22 PM",
    text: "My regards to mum",
    unRead: true
  ),
  Message(
    sender: jeniffer,
    time: "4:05 PM",
    text: "MOG",
    unRead: false
  ),
  
  Message(
    sender: seun,
    time: "7:11 PM",
    text: "Babe watsup?",
    unRead: true
  ),
  
  Message(
    sender: sunkanmi,
    time: "10:45 PM",
    text: "Chief",
    unRead: false
  ),
  
  Message(
    sender: taiwo,
    time: "12:01 AM",
    text: "Please kindly call the guy in time",
    unRead: false,
  ),

  Message(
    sender: tobias,
    thread: chatThread,
    time: "1:09 AM",
    text: "Business man?",
    unRead: true
  ),
  
];

final Thread chatThread = Thread(
  me: "How are you?",
  reply: "I am fine"
);

