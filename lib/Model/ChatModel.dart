// ignore_for_file: file_names

class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  ChatModel(
    {required this.name, required this.icon, required this.isGroup, required this.time, required this.currentMessage});
}