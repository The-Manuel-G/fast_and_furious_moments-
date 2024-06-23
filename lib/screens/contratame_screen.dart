import 'package:flutter/material.dart';
import '/widgets/contacto_card.dart';

class ContratameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contrátame'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ContactoCard(
              name: 'Ariel Manuel Naranjo De La Cruz',
              image: 'me.png',
              email: 'arielnaranjoi829@gmail.com',
              phone: '123-456-7890',
            ),
            SizedBox(height: 20),
            Text(
              'Si te ha impresionado mi trabajo, no dudes en contactarme para futuros proyectos.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
