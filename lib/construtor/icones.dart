import 'package:flutter/material.dart';

class IconeFinal extends StatelessWidget {
  final String tempo;
  final IconData icone;

  IconeFinal({this.tempo, this.icone});

  @override
  Widget build(BuildContext context) {
    if (tempo != null && icone != null) {
      return Column(
        children: [
          Container(
            child: Text('$tempo'),
          ),
          Container(
            child: Icon(icone),
          ),
        ],
      );
    } else if (icone != null) {
      return Column(
        children: [
          Container(
            child: Icon(icone),
          ),
        ],
      );
    }
  }
}
