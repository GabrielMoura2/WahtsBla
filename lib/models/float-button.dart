import 'package:flutter/material.dart';

class FloatChamadas extends StatelessWidget {

  final void _atualiza;


  FloatChamadas(this._atualiza);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 16),
          height: 61,
          child: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: Icon(Icons.video_call),
          ),
        ),
        FloatingActionButton(
          onPressed: () {_atualiza;},
          child: Icon(Icons.phone),
        ),
      ],
    );
  }
}

class FloatConversas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.message),
    );
  }
}


class FloatStatus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 16),
          height: 61,
          child: FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: Icon(Icons.text_fields),
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.camera_alt),
        ),
      ],
    );
  }
}
