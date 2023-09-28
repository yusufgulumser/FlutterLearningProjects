import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key});

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 166, 44, 6),
//             Color.fromARGB(255, 97, 30, 10),
//           ],
//           begin: Alignment.topLeft,                       /// WE ARE GONNA GIVE A NAME TO THESE VARIABLES
//           end: Alignment.bottomRight,
//         ),
//       ),
//       child: const Center(
//         child: Text(
//           'Hello',
//           style: TextStyle(color: Colors.white, fontSize: 28),
//         ),
//       ),
//     );
//   }
// }

/// WE CAN GIVE A NAME TO VARIABLES
var startsAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 166, 44, 6),
            Color.fromARGB(255, 97, 30, 10),
          ],
          begin: startsAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('hello'),
      ),
    );
  }
}

/// VAR IS CHANGABLE, WE CAN UPDATE IT

// var startsAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

/// FINAL AND CONST ISN'T CHANGABLE AND THEY ARE USING FOR LOCKING VARIABLE

// final startsAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

// const startsAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;
