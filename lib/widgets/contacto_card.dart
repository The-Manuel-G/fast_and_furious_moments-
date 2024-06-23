import 'package:flutter/material.dart';

class ContactoCard extends StatelessWidget {
  final String name;
  final String image;
  final String email;
  final String phone;

  ContactoCard(
      {required this.name,
      required this.image,
      required this.email,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/$image'),
        ),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(email),
            Text(phone),
          ],
        ),
      ),
    );
  }
}
