import 'package:flutter/material.dart';

import 'package:whatsapp_clone/construtor/novo-item.dart';
import 'package:whatsapp_clone/models/float-button.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatStatus(),
      body: RefreshIndicator(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NovoItem(
                  nomeDaPessoa: 'Pessoa 1', subtitulo: 'Horario 1', caso: 3),
              NovoItem(
                  nomeDaPessoa: 'Pessoa 2', subtitulo: 'Horario 2', caso: 3),
              NovoItem(
                  nomeDaPessoa: 'Pessoa 3', subtitulo: 'Horario 3', caso: 3),
            ],
          ),
        ),
        onRefresh: _refreshLocalGallery,
      ),
    );
  }

  Future<Null> _refreshLocalGallery() async {
    debugPrint('refreshing stocks...');
  }
}
