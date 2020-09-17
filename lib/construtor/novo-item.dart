import 'package:flutter/material.dart';
import 'package:whatsapp_clone/construtor/item-lista.dart';
import 'package:whatsapp_clone/models/linha.dart';



class NovoItem extends StatelessWidget {

  final String nomeDaPessoa;
  final String subtitulo;
  final int caso;

  NovoItem({this.nomeDaPessoa, this.subtitulo, this.caso});


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Linha(),
      ConversaLista(nomeDaPessoa: nomeDaPessoa,subtitulo: subtitulo,caso: caso),
    ],);
  }
}
