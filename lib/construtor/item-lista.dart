import 'package:flutter/material.dart';
import 'icones.dart';

const String tempo = '00:00';

class ConversaLista extends StatelessWidget {
  final String nomeDaPessoa;
  final String subtitulo;
  final int caso;

  ConversaLista({this.nomeDaPessoa, this.subtitulo, this.caso});

  @override
  Widget build(BuildContext context) {
    switch (caso) {
      case 1:
        {
          return Column(
            children: [
              Container(
                //color: Colors.red,
                height: 70,

                child: ListTile(
                  title: Text(nomeDaPessoa),
                  subtitle: Text(subtitulo),
                  leading: CircleAvatar(),
                  trailing: IconeFinal(tempo: tempo, icone: Icons.volume_mute),
                  isThreeLine: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  enabled: true,
                ),
              ),
            ],
          );
        }
        break;

      case 2:
        {
          return Column(
            children: [
              Container(
                //color: Colors.red,
                height: 70,
                child: ListTile(
                  title: Text(nomeDaPessoa),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received),
                      Text(subtitulo),
                    ],
                  ),
                  leading: CircleAvatar(),
                  trailing: IconeFinal(icone: Icons.videocam),
                  isThreeLine: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  enabled: true,
                ),
              ),
            ],
          );
        }
        break;

      case 3:
        {
          return Column(
            children: [
              Container(
                //color: Colors.red,
                height: 70,
                child: ListTile(
                  title: Text(nomeDaPessoa),
                  subtitle: Row(
                    children: [
                      Text(subtitulo),
                    ],
                  ),
                  leading: CircleAvatar(),
                  isThreeLine: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
                  enabled: true,
                ),
              ),
            ],
          );
        }
        break;
    }
    return null;
  }

}
