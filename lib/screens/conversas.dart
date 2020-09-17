import 'package:flutter/material.dart';

import 'package:whatsapp_clone/construtor/novo-item.dart';
import 'package:whatsapp_clone/models/float-button.dart';

class Conversas extends StatefulWidget {
  @override
  _ConversasState createState() => _ConversasState();
}

class _ConversasState extends State<Conversas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatConversas(),
      body: RefreshIndicator(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              NovoItem(nomeDaPessoa: 'Pessoa 1', subtitulo: 'Mensagem 1',caso: 1),
              NovoItem(nomeDaPessoa: 'Pessoa 2', subtitulo: 'Mensagem 2',caso: 1),
              NovoItem(nomeDaPessoa: 'Pessoa 3', subtitulo: 'Mensagem 3',caso: 1),
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
