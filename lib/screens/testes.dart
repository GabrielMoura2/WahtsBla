import 'package:flutter/material.dart';
import 'package:whatsapp_clone/construtor/novo-item.dart';

class Testes extends StatefulWidget {
  @override
  _TestesState createState() => _TestesState();
}

class _TestesState extends State<Testes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('bla'),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NovoItem(nomeDaPessoa: 'Pessoa 1', subtitulo: 'Mensagem 1',caso: 1),
            NovoItem(nomeDaPessoa: 'Pessoa 2', subtitulo: 'Mensagem 2',caso: 1),
          ],
        ),
      ),
    );
  }
}
