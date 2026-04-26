import 'package:flutter/material.dart';
import 'package:myapp/widgets/customChatTile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home) ,
        title: Text("Whatsapp"),
        actions: [Icon(Icons.camera_alt_outlined), Icon(Icons.more_vert)],
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          customChatTile(
            'Abdullah',
            'Hellllooooo',
            'https://abdulahbinshahid-portfolio-mu.vercel.app/profile.jpg',
          ),
          SizedBox(height: 10),
          customChatTile(
            'AHMEd',
            'biryani lay ana',
            "https://cdn.pixabay.com/photo/2019/03/05/13/44/vehicle-4036198_1280.jpg",
          ),
          SizedBox(height: 10),
          customChatTile(
            'ALEEE',
            'bhai ajao',
            "https://cdn.pixabay.com/photo/2016/12/11/18/15/bmw-1899972_1280.jpg",
          ),
          SizedBox(height: 10),
          Container(
            height: 70,
            width: 40,
            decoration: BoxDecoration(
            color: Colors.red,
              // color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2019/03/05/13/44/vehicle-4036198_1280.jpg",
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10, width: 10, color: Colors.white),
                Text("Owais"),
              ],
            ),
          ),
          // add sizebox
          // ListTile(
          //   leading: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //       "https://cdn.pixabay.com/photo/2019/03/05/13/44/vehicle-4036198_1280.jpg",
          //     ),
          //   ),
          //   title: Text("ahsan"),
          //   subtitle: Text("Assalam u Walaikum????"),
          //   tileColor: const Color.fromARGB(255, 152, 234, 240),
          //   trailing: Text("3:14 pm"),
          // ),
          // SizedBox(height: 10),
          // ListTile(
          //   leading: CircleAvatar(backgroundColor: Colors.black),
          //   title: Text("ahmed"),
          //   subtitle: Text("Bahar Chalen????"),
          //   tileColor: const Color.fromARGB(255, 152, 234, 240),
          //   trailing: Text("3:14 pm"),
          // ),
        ],
      ),
    );
  }
}
