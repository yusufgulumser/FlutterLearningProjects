import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 103, 34, 13), Color.fromARGB(255, 123, 39, 14)),
      ),
    ),
  );
}
