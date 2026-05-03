import 'package:flutter/material.dart';

Widget customChatTile({required title,required subtitle,required image}) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: NetworkImage("$image")),
    title: Text("$title"),
    subtitle: Text("$subtitle"),
    tileColor: const Color.fromARGB(255, 138, 236, 225),
    trailing: Text(
      "3:14 pm",
      style: TextStyle(color: const Color.fromARGB(255, 210, 20, 20)),
    ),
  );
}


abc(name) {}