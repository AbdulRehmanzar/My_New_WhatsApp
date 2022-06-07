// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/CustomUI/CustomCard.dart';

import '../Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Abdul Rehman",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Owais Warsi",
      isGroup: true,
      currentMessage: "I am CEO",
      time: "12:00",
      icon: "group.svg",
    ),
    ChatModel(
      name: "Billal Rehman",
      isGroup: false,
      currentMessage: "How are you",
      time: "10:00",
      icon: "person.svg",
    ),
     ChatModel(
      name: "Abdul rehman",
      isGroup: false,
      currentMessage: " I am Fine",
      time: "9:01",
      icon: "person.svg",
    ),
     ChatModel(
      name: "Abdullah",
      isGroup: true,
      currentMessage: "Whats up",
      time: "11:00",
      icon: "group.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 13, 143, 132),
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index)=>CustomCard(chatModel : chats[index]),
       
      ),
    );
  }
}
