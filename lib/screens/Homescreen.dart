
// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/pages/ChatPage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  
    late TabController _controller;
    @override
    void initState(){
      
      super.initState();
      _controller = TabController(length:4, vsync: this, initialIndex:1 );
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp Clone"),
       backgroundColor: const Color.fromARGB(255, 13, 143, 132),
        actions: [
        IconButton(icon: const Icon(Icons.search), onPressed: (){} ),
        PopupMenuButton<String>(
          onSelected: (value){
            // ignore: avoid_print
            print(value);
          },
          itemBuilder: (BuildContext context){
          return[
            PopupMenuItem(
              value: "New group" ,
              child: Text("New group"),
              ),
            PopupMenuItem(
              value: "New broadcast" ,
              child: Text("New broadcast"),
              ),
            PopupMenuItem(
              value: "Whatsapp Web" ,
              child: Text("Whatsapp Web"),
              ),
            PopupMenuItem(
              value: "Starred messages" ,
              child: Text("Starred messages"),
              ),
            PopupMenuItem(
              value: "Settings" ,
              child: Text("Settings"),
              ),
          ];
        },
        )
        ],
        bottom: TabBar(          
      controller: _controller,
      indicatorColor: Colors.white,
      tabs: const [
        Tab(
          icon: Icon(Icons.camera_alt),
        ),
        Tab(
          text: "CHATS",
        ),
        Tab(
          text: "STATUS",
        ),
        Tab(
          text: "CALLS",
        )
      ],
    ),
      ),
      body: TabBarView(
        controller: _controller,
        children:[
        const Text("Camera"),
        ChatPage(),
        const Text("Status"),
        const Text("Calls"),
        ]
      ),
    );
 
  }
}