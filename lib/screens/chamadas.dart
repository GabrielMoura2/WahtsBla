import 'package:flutter/material.dart';

import 'package:whatsapp_clone/construtor/novo-item.dart';
import 'package:whatsapp_clone/models/float-button.dart';

class Chamadas extends StatefulWidget {
  final List _chamadas = List();
  @override
  _ChamadasState createState() => _ChamadasState();
}



class _ChamadasState extends State<Chamadas> {

  int _numero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatChamadas(_atualiza()),
      body: RefreshIndicator(
        child:
          ListView.builder(
            itemCount: widget._chamadas.length,
            itemBuilder: (context, indice) {
              final chamada = widget._chamadas[indice];
              return ItemChamada(_numero);
            },
          ),
        onRefresh: _refreshLocalGallery,
      ),
      appBar: AppBar(actions: [
        RaisedButton(onPressed: (){_atualiza();} ),
      ],),
    );
  }

  void _atualiza() => setState(() {
    widget._chamadas.add(ItemChamada(_numero));
    _numero++;
  });

  Future<Null> _refreshLocalGallery() async {
    debugPrint('refreshing stocks...');
  }
}

class ItemChamada extends StatelessWidget {

  final int numero;


  ItemChamada(this.numero);

  @override
  Widget build(BuildContext context) {
    return NovoItem(
        nomeDaPessoa: 'Pessoa $numero', subtitulo: 'Horario $numero', caso: 2,);
  }
}