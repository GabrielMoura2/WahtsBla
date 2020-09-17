import 'package:flutter/material.dart';
const double _linha = 0.5;

class Linha extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      height: _linha,
      thickness: _linha,
      indent: 73,
      endIndent: 15,
    );
  }
}
