import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home View"), backgroundColor: Colors.red),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.yellow),
              Container(height: 200, width: 200, color: Colors.pink),
              Container(height: 200, width: 200, color: Colors.teal),
                ],
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "Container 1",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
            ),

              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.yellow),
              Container(height: 200, width: 200, color: Colors.pink),
              Container(height: 200, width: 200, color: Colors.teal),
                ],
              ),
            ),
            
            Container(height: 200, width: 200, color: Colors.yellow),
            
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.yellow),
              Container(height: 200, width: 200, color: Colors.pink),
              Container(height: 200, width: 200, color: Colors.teal),
                ],
              ),
            ),

            Container(height: 200, width: 200, color: Colors.pink),
            
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.yellow),
              Container(height: 200, width: 200, color: Colors.pink),
              Container(height: 200, width: 200, color: Colors.teal),
                ],
              ),
            ),
            
            Container(height: 200, width: 200, color: Colors.teal),
          ],
        ),
      ),
    );
  }
}
