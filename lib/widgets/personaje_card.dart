import 'package:flutter/material.dart';

class PersonajeCard extends StatelessWidget {
  final String name;
  final String image;
  final String details;

  PersonajeCard(
      {required this.name, required this.image, required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/images/$image'),
        title: Text(name),
        subtitle: Text(details),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(name),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/$image'),
                    SizedBox(height: 10),
                    Text(details),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
