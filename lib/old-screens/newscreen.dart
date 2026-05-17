// import 'package:flutter/material.dart';

// class NewScreen extends StatelessWidget {
//   const NewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 800,
//         height: 1000,
//         color: Colors.black,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 500,
//               width: 170,
//               color: Colors.red,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   CircleAvatar(backgroundColor: Colors.yellow),
//                   CircleAvatar(backgroundColor: Colors.purple),
//                   CircleAvatar(backgroundColor: Colors.green),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class NewScreen extends StatelessWidget {
//   const NewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: 1000,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(backgroundColor: Colors.yellow),
//             SizedBox(width: 20,),
//             CircleAvatar(backgroundColor: Colors.purple),
//             SizedBox(width: 20,),
//             CircleAvatar(backgroundColor: Colors.green),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class NewScreen extends StatelessWidget {
//   const NewScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 120),
//               Text("Signup", style: TextStyle(fontSize: 34)),
//               SizedBox(height: 50),
//               Container(
//                 height: 200,
//                 margin: EdgeInsets.symmetric(horizontal: 20.0),
//                 padding: EdgeInsets.only(bottom: 10, top: 20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Password',
//                       ),
//                     ),
//                     TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         labelText: 'Password',
//                       ),
//                     ),
//                     ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        decoration: BoxDecoration(color: Colors.pink.shade200),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '50-40% OFF',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Now in (product)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      'All Colors',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Shop Now ",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/02/03/10/07/lamborghini-4815249_1280.jpg",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
