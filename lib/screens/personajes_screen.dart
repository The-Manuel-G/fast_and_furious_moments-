import 'package:flutter/material.dart';
import '/widgets/personaje_card.dart';

class PersonajesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes'),
      ),
      body: ListView(
        children: [
          PersonajeCard(
            name: 'Dominic Toretto',
            image: 'Toretto.png',
            details: 'Líder del equipo y experto en autos rápidos.',
          ),
          PersonajeCard(
            name: 'Brian O\'Conner',
            image: 'brian.png',
            details: 'Ex policía y corredor callejero.',
          ),
          PersonajeCard(
            name: 'Letty Ortiz',
            image: 'Letty.png',
            details: 'Conductora experta y esposa de Dominic.',
          ),
        ],
      ),
    );
  }
}
