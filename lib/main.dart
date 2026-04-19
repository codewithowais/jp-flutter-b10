
// stateless => screen static
// statefull
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_view.dart';

void main() {
  runApp(const MyApp()); // run flutter application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
