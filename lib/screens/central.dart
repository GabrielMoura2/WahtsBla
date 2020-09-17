import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/float-button.dart';
import 'package:whatsapp_clone/screens/chamadas.dart';
import 'package:whatsapp_clone/screens/conversas.dart';
import 'package:whatsapp_clone/screens/status.dart';

class Central extends StatefulWidget {
  @override
  _CentralState createState() => _CentralState();
}

class _CentralState extends State<Central> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsBla'),
      ),
      body: PageView(
        controller: _controller,
        children: [
          Conversas(),
          Chamadas(),
          Status(),
        ],
      ),

    );
  }
}
