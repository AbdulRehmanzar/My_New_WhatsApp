// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsappclone_flutter/Model/ChatModel.dart';
import 'package:whatsappclone_flutter/screens/individualpage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel }) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (contex)=>  Individualpage(
              chatModel: chatModel,
              )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              // ignore: sort_child_properties_last
              child: SvgPicture.asset(
                chatModel.isGroup ?
                "assets/groups.svg": "assets/person.svg" ,
                color: Colors.white,
                height: 37,
                width: 37,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
             chatModel.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children:  [
                const Icon(Icons.done_all),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  chatModel.currentMessage,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing:  Text(chatModel.time),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
