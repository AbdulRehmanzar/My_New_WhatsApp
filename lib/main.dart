
import 'package:flutter/material.dart';
import 'package:whatsappclone_flutter/screens/Homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       theme:  ThemeData(
        //  fontFamily: "OpenSans",
        // fontFamily: 'Lora',
     
       ),
      home: const Homescreen(),
      ) ; 
    }
  }