import 'package:flutter/material.dart';

//////////////////////  Adding a Background Color to Scaffold

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(                           /// improves code's appearance
//         backgroundColor: Colors.deepPurple,     /// changes background'S color
//         body: Center(                           /// moves 'hello' to the center
//           child: Text('Hello'),
//         ),
//       ),
//     ),
//   );
// }

/////////////////////////  Adding a Gradient Background to Scaffold

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(                         /// the colors go left to right linearly
//               colors: [                                       /// requires color list not just one color.
//                 Color.fromARGB(255, 166, 44, 6),
//                 Color.fromARGB(255, 97, 30, 10),
//               ],
//             ),
//           ),
//           child: const Center(
//             child: Text('Hello'),
//           ),
//         ),
//       ),
//     ),
//   );
// }

////////////////////////  Linear Gradient Background with Text

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 166, 44, 6),
//                 Color.fromARGB(255, 97, 30, 10),
//               ],
//               begin:Alignment.topLeft,
//               end: Alignment.bottomRight,                     /// colors will go topleft to bottomright
//             ),
//           ),
//           child: const Center(
//             child: Text('Hello'),
//           ),
//         ),
//       ),
//     ),
//   );
// }

/////////////////////////////////////  Styled Text on Gradient Background

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 166, 44, 6),
                Color.fromARGB(255, 97, 30, 10),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello',
              style: TextStyle(
                color: Colors.white,                   /// changes the color of text
                fontSize: 28                             /// changes the fontsize of text
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
