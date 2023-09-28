import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

// class GradientContainer extends StatelessWidget {       /// creates a class and extends a class from flutter/material.dart
//   @override
//   Widget build(context) {                               /// build have to return a widget
//     return Container(                                   /// build returns Container widget
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 166, 44, 6),
//                 Color.fromARGB(255, 97, 30, 10),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: const Center(
//             child: Text(
//               'Hello',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 28
//               ),
//             ),
//           ),
//         );
//   }
// }



class GradientContainer extends StatelessWidget {                     
  const GradientContainer({super.key});                     /// Key: Identifies a widget. Super: Acceses the superclass.

  

  @override
  Widget build(context) {
    return Container(
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
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}