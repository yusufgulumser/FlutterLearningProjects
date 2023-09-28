import 'dart:math';
import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var currentDice = 2;

  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6) + 1;                    /// Generates random number between 1-6

      
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',                  /// prints here the number we generated
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 25),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('roll'))
      ],
    );
  }
}
