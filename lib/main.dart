import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/central.dart';

void main() {
  runApp(WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Central(),
           theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.lightGreenAccent,
      ),
      //theme: ThemeData.dark(),
    );
  }
}
