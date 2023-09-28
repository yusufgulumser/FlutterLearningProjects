import 'package:flutter/material.dart';

/////////////////////// Basic Flutter App Setup
///
// void main() {
//   runApp();           ///we create a function here. And we need to use this in somewhere else or it wont work.
// }

//////////////////////// Creating a MaterialApp Widget

// void main() {
//   runApp(MaterialApp());     ///MaterialApp is a widget. Widgets create the user interface.
// }

//////////////////////// Displaying Text in MaterialApp

// void main() {
//   runApp(MaterialApp(home: Text('Hello'),));     /// prints hello on the app screen
// }

////////////////////// Using 'const' in MaterialApp

void main() {
  runApp(const MaterialApp(home: Text('Hello'),));     /// const: increase the performance and removes blue line under code
}