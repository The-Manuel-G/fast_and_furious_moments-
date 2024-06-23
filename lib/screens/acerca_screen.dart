import 'package:flutter/material.dart';

class AcercaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rápidos y Furiosos', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Rápidos y Furiosos es una franquicia de medios que incluye una serie de películas de acción centradas '
              'en las carreras callejeras y los atracos. Creada por Gary Scott Thompson, la serie ha tenido múltiples '
              'entregas y se ha convertido en una de las franquicias más exitosas de la historia del cine.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text('Temporadas: 10', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Creador: Gary Scott Thompson', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
