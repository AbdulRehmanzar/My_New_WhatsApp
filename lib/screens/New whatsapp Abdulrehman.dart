// ignore_for_file: prefer_const_constructors, duplicate_ignore, sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsappclone_flutter/Model/ChatModel.dart';

class Individualpage extends StatefulWidget {
  const Individualpage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<Individualpage> createState() => _IndividualpageState();
}

class _IndividualpageState extends State<Individualpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        backgroundColor: const Color.fromARGB(255, 13, 143, 132),
        // ignore: prefer_const_literals_to_create_immutables
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore, duplicate_ignore
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              // ignore: prefer_const_constructors
              CircleAvatar(
                 child: SvgPicture.asset(
                widget.chatModel.isGroup ?
                "assets/groups.svg": "assets/person.svg" ,
                color: Colors.white,
                height: 37,
                width: 37,
              ),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                   style: TextStyle(
              fontSize: 18.5,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("last seen today at 12:05",
            style: TextStyle(
              fontSize: 13,
            ),
            )
            ],
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: (){}),
        IconButton(icon: Icon(Icons.call), onPressed: (){}),
         PopupMenuButton<String>(
          onSelected: (value){
            // ignore: avoid_print
            print(value);
          },
          itemBuilder: (BuildContext context){
          return[
            PopupMenuItem(
              value: "Veiw Contact" ,
              child: Text("Veiw Contact"),
              ),
            PopupMenuItem(
              value: "Media, links, and docs" ,
              child: Text("Media, links, and docs"),
              ),
            PopupMenuItem(
              value: "Whatsapp Web" ,
              child: Text("Whatsapp Web"),
              ),
            PopupMenuItem(
              value: "Search" ,
              child: Text("Search"),
              ),
            PopupMenuItem(
              value: "Mute Notification" ,
              child: Text("Mute Notification"),
              ),
               PopupMenuItem(
              value: "Wallpaper" ,
              child: Text("Wallpaper"),
              ),
          ];
        },
        )
        ],
      ),
    );
  }
}
