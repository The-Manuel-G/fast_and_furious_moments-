import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(RapidosYFuriososApp());
}

class RapidosYFuriososApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rápidos y Furiosos App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
     
      
    );
  }
}
