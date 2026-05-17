import 'package:flutter/material.dart';
import 'package:myapp/old-screens/home_view.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Jane Doe"),
              accountEmail: Text("jane.doe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2020/02/03/10/07/lamborghini-4815249_1280.jpg',
                ),
              ), 
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                print("Hellooo");
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const HomeView(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const AboutView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
