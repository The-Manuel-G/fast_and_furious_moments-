import 'package:flutter/material.dart';
import '/widgets/momento_card.dart';

class MomentosScreen extends StatelessWidget {
  final List<Map<String, String>> momentos = [
    {
      'title': 'Rescatando a ramsey',
      'image': 'busBrian.png',
      'details': 'Brian y Dom rescatan a Ramsey de un bus en movimiento.',
      'video': 'acantilado_con_Paul_Walker.mp4'
    },
    {
      'title': 'Atraco en la torre',
      'image': 'HyperSport.png',
      'details': 'El equipo realiza un atraco en una torre pero algo sale mal.',
      'video': 'torreto_rascacielos.mp4'
    },
    {
      'title': 'Letty en la clínica',
      'image': 'MuerteLetty.png',
      'details': 'Letty recuerda su pasado.',
      'video': 'Letty_En_La_Clínica.mp4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Momentos'),
      ),
      body: ListView.builder(
        itemCount: momentos.length,
        itemBuilder: (context, index) {
          return MomentoCard(
            title: momentos[index]['title']!,
            image: momentos[index]['image']!,
            details: momentos[index]['details']!,
            video: momentos[index]['video']!,
          );
        },
      ),
    );
  }
}
