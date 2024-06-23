import 'package:flutter/material.dart';
import 'personajes_screen.dart';
import 'momentos_screen.dart';
import 'acerca_screen.dart';
import 'contratame_screen.dart';

import '/widgets/slider_intro.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rápidos y Furiosos App'),
      ),
      body: SliderIntro(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menú'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Personajes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonajesScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Momentos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MomentosScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Acerca de'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AcercaScreen()),
                );
              },
            ),
            
            ListTile(
              title: Text('Contrátame'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContratameScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
